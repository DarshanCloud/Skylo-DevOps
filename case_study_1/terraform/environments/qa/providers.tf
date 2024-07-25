terraform {
  required_version = "~> 1.5.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.60.0"
    }
  }
  backend "gcs" {
    bucket = "cloudengineertestqa"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
}
