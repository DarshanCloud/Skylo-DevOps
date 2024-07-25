resource "google_compute_instance" "backend-service-1" {
  name         = var.backend_instance_name
  machine_type = var.machine_type
  zone         = var.zone
  network_interface {
    network = var.network_name
    access_config {
      // Ephemeral public IP
    }
  }
  boot_disk {
    initialize_params {
      image = var.boot_disk_image
      type  = var.boot_disk_type
      size  = var.boot_disk_size
    }
  }
}
