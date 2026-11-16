use std::{env, path::PathBuf};

const FFMPEG_LIBS: [&str; 7] = [
    "avcodec",
    "avformat",
    "avfilter",
    "avdevice",
    "avutil",
    "swscale",
    "swresample",
];
fn main() {
    println!("cargo:rerun-if-env-changed=TARGET");
    println!("cargo:rerun-if-env-changed=FFMPEG_INCLUDE_DIR");
    println!("cargo:rerun-if-env-changed=FFMPEG_DLL_PATH");
    println!("cargo:rerun-if-env-changed=ZUMI_PLAY_RSA_PUBLIC_KEY_PEM");
    println!("cargo:rerun-if-env-changed=ZUMI_LOYALTY_RSA_PUBLIC_KEY_PEM");
    println!(
        "cargo:rustc-env=ZUMI_PLAY_RSA_PUBLIC_KEY_PEM={}",
        env::var("ZUMI_PLAY_RSA_PUBLIC_KEY_PEM").unwrap_or_default()
    );
    println!(
        "cargo:rustc-env=ZUMI_LOYALTY_RSA_PUBLIC_KEY_PEM={}",
        env::var("ZUMI_LOYALTY_RSA_PUBLIC_KEY_PEM").unwrap_or_default()
    );

    let target = env::var("TARGET").unwrap_or_default();
    let abi = match target.as_str() {
        "aarch64-linux-android" => "arm64-v8a",
        "armv7-linux-androideabi" => "armeabi-v7a",
        "x86_64-linux-android" => "x86_64",
        // Host tools/tests and Android x86 don't enable the FFmpeg fallback.
        _ => return,
    };

    let include_dir = PathBuf::from(
        env::var_os("FFMPEG_INCLUDE_DIR")
            .expect("Cargokit must build FFmpeg before invoking Cargo for Android"),
    );
    let libs_dir = PathBuf::from(
        env::var_os("FFMPEG_DLL_PATH")
            .expect("Cargokit must provide the FFmpeg shared-library directory"),
    );

    assert!(
        include_dir.join("libavcodec/avcodec.h").is_file(),
        "FFmpeg 7.1 headers missing; run the Android build through Cargokit"
    );
    for lib in FFMPEG_LIBS {
        assert!(
            libs_dir.join(format!("lib{lib}.so")).is_file(),
            "FFmpeg shared library missing for {abi}: lib{lib}.so"
        );
    }
    // These variables are consumed by rusty_ffmpeg's dependency build script.
    // Cargokit builds them before Cargo starts dependency build scripts.

    // rusty_ffmpeg emits dynamic link directives; this search path is also
    // needed by our final cdylib link and makes the chosen ABI explicit.
    println!("cargo:rustc-link-search=native={}", libs_dir.display());
    println!("cargo:rerun-if-changed={}", include_dir.display());
    println!("cargo:rerun-if-changed={}", libs_dir.display());
}
