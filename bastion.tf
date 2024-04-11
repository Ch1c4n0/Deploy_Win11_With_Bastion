resource "azurerm_subnet" "mybastionsubnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.10.0/27"]
}

resource "azurerm_public_ip" "mypipbastion" {
  name                = "Bastionpip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "myhost" {
  name                = "Mybastion"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                 = "configuration_ip_bastion"
    subnet_id            = azurerm_subnet.mybastionsubnet.id
    public_ip_address_id = azurerm_public_ip.mypipbastion.id
  }
}