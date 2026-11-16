pub mod api;
mod domain;
pub use domain::licensing;
mod frb_generated;
#[cfg(target_os = "android")]
pub mod infrastructure;

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
