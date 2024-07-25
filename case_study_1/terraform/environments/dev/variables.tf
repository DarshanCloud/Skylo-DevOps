variable "project_id" {}

variable "storage_bucket_name" {}

variable "backend_instance_name" {}

variable "machine_type" {}

variable "zone" {}

variable "network_name" {}

variable "boot_disk_image" {}

variable "boot_disk_type" {}

variable "boot_disk_size" {
    type = number
}

variable "backend-services-cluster" {}

variable "location" {}

variable "initial_node_count" {
    type = number
}
