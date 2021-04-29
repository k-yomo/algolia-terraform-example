
module "enable_api" {
  source  = "../modules/enable_api"
  project = local.gcp_project
}

module "tfstate" {
  source  = "../modules/tfstate"
  env     = local.env
  project = local.gcp_project
}