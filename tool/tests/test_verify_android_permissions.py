"""Run with: python3 -m unittest discover -s tool/tests."""
import importlib.util
from pathlib import Path
import tempfile
import unittest
import xml.etree.ElementTree as ET

SCRIPT = Path(__file__).resolve().parents[1] / 'verify_android_permissions.py'
spec = importlib.util.spec_from_file_location('permissions', SCRIPT)
permissions = importlib.util.module_from_spec(spec)
spec.loader.exec_module(permissions)


class AndroidPermissionsTest(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        self.path = Path(self.directory.name) / 'AndroidManifest.xml'
        self.root = ET.Element('manifest')
        for name in sorted(permissions.REQUIRED_PERMISSIONS):
            ET.SubElement(self.root, 'uses-permission', {
                permissions.ANDROID + 'name': name,
            })

    def verify(self):
        ET.ElementTree(self.root).write(self.path)
        return permissions.verify(self.path)

    def test_accepts_required_plugin_and_application_permissions(self):
        self.assertEqual(self.verify(), permissions.REQUIRED_PERMISSIONS)

    def test_rejects_each_broad_media_permission(self):
        for name in ['READ_EXTERNAL_STORAGE', 'READ_MEDIA_IMAGES',
                     'READ_MEDIA_VIDEO', 'READ_MEDIA_AUDIO']:
            with self.subTest(name=name):
                node = ET.SubElement(self.root, 'uses-permission', {
                    permissions.ANDROID + 'name': 'android.permission.' + name,
                })
                with self.assertRaisesRegex(ValueError, name):
                    self.verify()
                self.root.remove(node)

    def test_rejects_unreviewed_permission_even_when_sdk_scoped(self):
        ET.SubElement(self.root, 'uses-permission-sdk-23', {
            permissions.ANDROID + 'name': 'android.permission.CAMERA',
        })
        with self.assertRaisesRegex(ValueError, 'CAMERA'):
            self.verify()

    def test_rejects_missing_foreground_service_permission(self):
        for node in list(self.root):
            if node.attrib[permissions.ANDROID + 'name'].endswith(
                'FOREGROUND_SERVICE_MEDIA_PROCESSING'
            ):
                self.root.remove(node)
        with self.assertRaisesRegex(ValueError, 'missing required permissions'):
            self.verify()

    def test_rejects_source_manifest_with_removal_directives(self):
        ET.SubElement(self.root, 'uses-permission', {
            permissions.ANDROID + 'name': 'android.permission.READ_MEDIA_VIDEO',
            permissions.TOOLS + 'node': 'remove',
        })
        with self.assertRaisesRegex(ValueError, 'merged manifest'):
            self.verify()
