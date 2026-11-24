pub mod api;
mod domain;
mod frb_generated;
#[cfg(all(
    target_os = "android",
    any(target_arch = "arm", target_arch = "aarch64", target_arch = "x86_64")
))]
pub mod infrastructure;
pub mod staged_yuv;

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
