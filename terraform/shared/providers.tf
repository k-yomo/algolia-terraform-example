
provider "algolia" {
  app_id = var.algolia_app_id
}

provider "google" {
  project = var.gcp_project
  region  = "asia-northeast1"
}

provider "google-beta" {
  project = var.gcp_project
  region  = "asia-northeast1"
}
