resource "google_storage_bucket" "tfstate" {
  project  = var.project
  name     = "algolia-terraform-example-${var.env}-tf-state"
  location = "asia"

  versioning {
    enabled = true
  }
}
