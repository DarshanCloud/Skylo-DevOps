resource "google_storage_bucket" "tf-terraformstates" {
  name                        = var.storage_bucket_name
  location                    = "US"
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true
  project                     = var.project_id
}

