package com.mostafa.sensei.kuymo.app

import android.app.Activity
import android.app.ActivityManager
import android.content.Intent
import android.content.IntentFilter
import android.net.Uri
import android.os.BatteryManager
import android.os.Handler
import android.os.Looper
import android.provider.OpenableColumns
import com.mostafa.sensei.kuymo.*
import kotlin.coroutines.suspendCoroutine
import java.io.File
import java.util.concurrent.Executors

/** SAF grants only the documents explicitly chosen by the user. */
class AiFilesBridge(private val activity: Activity) : NativeAiFilesApi {
    private var pending: ((Result<List<NativePickedDocument>>) -> Unit)? = null
    private val executor = Executors.newSingleThreadExecutor()
    private val main = Handler(Looper.getMainLooper())

    override suspend fun pickDocuments(modelsOnly: Boolean): List<NativePickedDocument> = suspendCoroutine { continuation ->
        pickDocumentsAsync(modelsOnly) { continuation.resumeWith(it) }
    }
    override suspend fun copyDocument(uri: String, destination: String): Unit = suspendCoroutine { continuation ->
        copyDocumentAsync(uri, destination) { continuation.resumeWith(it) }
    }
    override suspend fun canReadDocument(uri: String): Boolean = suspendCoroutine { continuation ->
        canReadDocumentAsync(uri) { continuation.resumeWith(it) }
    }
    private fun pickDocumentsAsync(modelsOnly: Boolean, callback: (Result<List<NativePickedDocument>>) -> Unit) {
        if (pending != null) { callback(Result.failure(IllegalStateException("E_PICKER_BUSY"))); return }
        pending = callback
        try {
            activity.startActivityForResult(Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
                addCategory(Intent.CATEGORY_OPENABLE)
                type = "*/*"
                putExtra(Intent.EXTRA_ALLOW_MULTIPLE, !modelsOnly)
                if (!modelsOnly) putExtra(Intent.EXTRA_MIME_TYPES, arrayOf("video/*", "audio/*", "image/*", "text/plain"))
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION)
            }, REQUEST)
        } catch (error: Exception) { pending = null; callback(Result.failure(error)) }
    }

    fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
        if (requestCode != REQUEST) return false
        val callback = pending ?: return true
        pending = null
        if (resultCode != Activity.RESULT_OK || data == null) { callback(Result.success(emptyList())); return true }
        try {
            val uris = data.clipData?.let { clip -> (0 until clip.itemCount).map { clip.getItemAt(it).uri } }
                ?: listOfNotNull(data.data)
            val documents = uris.distinct().map { uri ->
                try { activity.contentResolver.takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION) }
                catch (_: SecurityException) { /* Some providers grant access for this process only. */ }
                var name = "document"
                var bytes = 0L
                activity.contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME, OpenableColumns.SIZE), null, null, null)?.use { cursor ->
                    if (cursor.moveToFirst()) {
                        name = cursor.getString(0) ?: name
                        if (!cursor.isNull(1)) bytes = cursor.getLong(1)
                    }
                }
                NativePickedDocument(uri.toString(), name, bytes)
            }
            callback(Result.success(documents))
        } catch (error: Exception) { callback(Result.failure(error)) }
        return true
    }

    private fun copyDocumentAsync(uri: String, destination: String, callback: (Result<Unit>) -> Unit) {
        executor.execute {
            val result = runCatching {
                val output = File(destination).canonicalFile
                require(listOf(activity.filesDir, activity.cacheDir).any { output.path.startsWith(it.canonicalPath + File.separator) }) { "E_INVALID_DESTINATION" }
                output.parentFile?.mkdirs()
                val partial = File(output.path + ".partial")
                try {
                    activity.contentResolver.openInputStream(Uri.parse(uri)).use { input ->
                        requireNotNull(input) { "E_FILE_ACCESS" }
                        partial.outputStream().use { input.copyTo(it) }
                    }
                    check(partial.renameTo(output)) { "E_FILE_COMMIT" }
                } finally { partial.delete() }
            }
            main.post { callback(result) }
        }
    }

    private fun canReadDocumentAsync(uri: String, callback: (Result<Boolean>) -> Unit) {
        executor.execute {
            val readable = try { activity.contentResolver.openFileDescriptor(Uri.parse(uri), "r")?.use { true } ?: false } catch (_: Exception) { false }
            main.post { callback(Result.success(readable)) }
        }
    }
    override fun resources(): NativeAiResources {
        val info = ActivityManager.MemoryInfo()
        (activity.getSystemService(Activity.ACTIVITY_SERVICE) as ActivityManager).getMemoryInfo(info)
        val battery = activity.registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
        val status = battery?.getIntExtra(BatteryManager.EXTRA_STATUS, -1)
        return NativeAiResources(info.availMem, status == BatteryManager.BATTERY_STATUS_CHARGING || status == BatteryManager.BATTERY_STATUS_FULL)
    }

    fun dispose() {
        pending?.invoke(Result.failure(IllegalStateException("E_PICKER_CLOSED")))
        pending = null
        executor.shutdown()
    }
    companion object { private const val REQUEST = 0x4b41 }
}
