
output "algolia_api_key_app" {
  value     = algolia_api_key.app.key
  sensitive = true
}
