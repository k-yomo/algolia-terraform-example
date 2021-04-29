terraform {
  backend "gcs" {
    bucket = "algolia-terraform-example-dev-tf-state"
  }
}