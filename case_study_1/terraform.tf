# main.tf (Terraform configuration)
provider "google" {
  credentials = file("path/to/credentials.json")
  project     = "your-project-id"
  region      = "us-central1"
}

# Compute Engine instance for Backend service-1
resource "google_compute_instance" "backend-service-1" {
  name         = "backend-service-1-instance"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"
  # Add more configuration as needed (e.g., disk, networking)
}

# GKE cluster for other backend services
resource "google_container_cluster" "cluster" {
  name     = "backend-services-cluster"
  location = "us-central1"
  initial_node_count = 1
  # Add more configuration as needed (e.g., node pools, networking)
}