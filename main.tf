provider "google" {
  project     = var.project
}
resource "google_compute_instance" "default" {
  name         = "skiao-test-terraform"
  machine_type = var.machine-type
  zone         = var.zone
  allow_stopping_for_update = true
  tags = ["skiao-test-terraform"]
labels = {
    environment = "skiao-test-terraform"
    project = "fastly-soc"
  }
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
}
