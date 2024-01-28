output azuread_container_registry_url {
  value = "${azurerm_container_registry.acr.login_server}"
}

output azurerm_linux_web_app_url {
  value = "${azurerm_linux_web_app.web_app.default_hostname}"
}

output azure_client_id {
  value = "${azuread_service_principal.app_sp.client_id}"
}

output tenant_id {
  value = "${data.azurerm_client_config.current.tenant_id}"
}

output instrumentation_key {
  sensitive = true
  value = "${azurerm_application_insights.app_insights.instrumentation_key}"
}

output azurerm_acr_admin_username {
  value = "${azurerm_container_registry.acr.admin_username}"
}

output azurerm_acr_admin_password {
  sensitive = true
  value = "${azurerm_container_registry.acr.admin_password}"
}

output azurerm_linux_web_app_credentials {
  sensitive = true
  value = "${azurerm_linux_web_app.web_app.site_credential}"
}