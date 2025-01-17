module "rg" {
  source = "git@github.com:Seyfor-CSC/mit.resource-group.git?ref=v2.0.0"
  config = [
    {
      name     = "mit-${terraform.workspace}-rg01"
      location = "westeurope"
    },
    {
      name     = "mit-${terraform.workspace}-rg02"
      location = "westeurope"
    }
  ]
  providers = {
    azurerm = azurerm.dynamic
  }
}
