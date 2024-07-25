resource "google_project" "tf-my-project" {
  name       = var.project_name
  project_id = var.project_id
  billing_account = var.billing_account
  auto_create_network = false
}
