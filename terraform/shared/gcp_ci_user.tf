resource "google_service_account" "ci_user" {
  project      = local.gcp_project
  account_id   = "ci-user-${local.env}"
  display_name = "CI User Service Account"
}

resource "google_service_account_key" "ci_user_key" {
  service_account_id = google_service_account.ci_user.name
}

// grant owner role to execute terraform plan on CI
resource "google_project_iam_member" "ci_user_owner_binding" {
  project = local.gcp_project
  member  = "serviceAccount:${google_service_account.ci_user.email}"
  role    = "roles/owner"
}
