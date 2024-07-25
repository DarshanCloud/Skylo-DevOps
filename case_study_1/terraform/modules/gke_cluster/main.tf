resource "google_container_cluster" "cluster" {
  name               = var.backend-services-cluster
  location           = var.location
  initial_node_count = var.initial_node_count
  # Add more configuration as needed (e.g., node pools, networking)
}