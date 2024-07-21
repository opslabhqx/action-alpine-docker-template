use log::{info, warn};
use std::env;

fn main() {
    env::set_var("RUST_LOG", "info");
    env_logger::init();

    info!("Hello, world!");
}
