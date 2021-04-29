
module "tfstate" {
  source  = "../modules/tfstate"
  env     = local.env
  project = local.gcp_project
}