terraform {
  backend "gcs" {
    bucket = "algolia-terraform-example-prod-tf-state"
  }
}