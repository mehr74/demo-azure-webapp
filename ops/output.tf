output azuread_container_registry_url {
  value = "${azurerm_container_registry.acr.login_server}"
}

output azurerm_linux_web_app_url {
  value = "${azurerm_linux_web_app.web_app.default_hostname}"
}