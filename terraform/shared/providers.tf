
provider "algolia" {
  app_id = local.algolia_app_id
}

provider "google" {
  project = local.gcp_project
  region  = "asia-northeast1"
}

provider "google-beta" {
  project = local.gcp_project
  region  = "asia-northeast1"
}
