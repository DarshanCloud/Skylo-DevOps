module "dev-gcs" {
  source              = "../../modules/gcs"
  storage_bucket_name = var.storage_bucket_name
  project_id          = var.project_id
}

module "compute_instance" {
  source = "../../modules/vm"
  backend_instance_name         = var.backend_instance_name
  machine_type = var.machine_type
  zone         = var.zone
  network_name    = var.network_name
  boot_disk_image = var.boot_disk_image
  boot_disk_type = var.boot_disk_type
  boot_disk_size  = var.boot_disk_size
}

module "gke-cluster" {
  source = "../../modules/gke_cluster"
  backend-services-cluster = var.backend-services-cluster
  location = var.location
  initial_node_count = var.initial_node_count
}
