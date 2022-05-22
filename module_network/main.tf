provider "azurerm" {
  features {}
  subscription_id = var.subscriptionID
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}
resource "azurerm_resource_group" "webhelp" {
    name = var.res_grp
    location = var.location

}

resource "azurerm_virtual_network" "net" {
  name                = "${var.address_space_name}"
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.webhelp.name}"
  address_space       = "${var.subnet_pref}"

  #dns_servers         = ["10.0.0.4", "10.0.0.5s"]
}
resource "azurerm_subnet" "webehlp_site1" {
  name = "${var.subnet_name[count.index]}"
  resource_group_name = "${azurerm_resource_group.webhelp.name}"
  virtual_network_name = "${azurerm_virtual_network.net.name}"
  address_prefixes = [(var.subnet_pref[count.index])]
  count = "${length(var.subnet_name)}" 
}