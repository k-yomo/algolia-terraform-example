
module "enable_api" {
  source  = "../modules/enable_api"
  project = var.gcp_project
}

module "tfstate" {
  source  = "../modules/tfstate"
  env     = var.env
  project = var.gcp_project
}