resource "azuread_application" "app" {
  display_name = var.application_name
}

resource "azuread_service_principal" "app_sp" {
  client_id = azuread_application.app.client_id
}

resource "azuread_application_federated_identity_credential" "credential" {
  application_id = azuread_application.app.id
  display_name   = "${var.application_name}-credential"
  description    = "Deployments for GitHub Actions"
  audiences      = ["api://AzureADTokenExchange"]
  issuer         = "https://token.actions.githubusercontent.com"
  subject        = "repo:${var.github_repository}"
}