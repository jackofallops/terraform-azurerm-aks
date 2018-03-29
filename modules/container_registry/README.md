# overview 
sub module of [terraform-azurerm-aks](https://github.com/sjones-sot/terraform-azurerm-aks)

## Usage
Example:
```hcl-terraform
module "my_acr" {
  source "modules/container_registry"
  create_registry = true
  resource_group = "my_resource_group"
  tags = {
    bliiing_code = "1234"
    foo          = "bar"
  }
}

```

## Variables:
Variables are type String unless otherwise specified

### create_registry
  Boolean to build a container resgistry with this AKS cluster
  default = false

### registry_name (Required)
  Specifies the name of the Container Registry. Changing this forces a new resource to be created.
  default = "myACR"

### location (Required)
  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  default = westeurope
}

### resource_group_name (Required - no default)
  The name of the resource group in which to create the Container Registry
}

### sku (Optional)
  The SKU name of the the container registry. Possible values are Classic (which was previously Basic), Basic, Standard and Premium.
  default = Basic

### tags
  description = "(Optional) Map of tags and values to apply to the resource"
  type        = "map"
  default = {}
