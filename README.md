# terraform-azurerm-aci

## Deploy a container via Azure Container Instances 

This Terraform module deploys a Linux or Windows container in Azure using Azure Container Instances.

The module demonstrates the fastest and simplest way to run a container in Azure, without having to manage any virtual machines and without having to adopt a higher-level service.

## Usage

```
module "aci" {
  source                = "Azure/aci/azurerm"
  resource_group_name   = "MyContGroup-RG01"
  location              = "westus"
  container_group_name  = "myContGroup"
  dns_name_label        = "cont01-example"
  os_type               = "linux"
  image_name            = "microsoft/aci-helloworld"
  container_name        = "mycont01"
  cpu_core_number       = "0.5"
  memory_size           = "1.5"
  port_number           = "80"
}
```

## Example creating container based on image from Docker Hub 

```
variable "resource_group_name" {
  default = "test-aci-rg01"
}


module "aci" {
  source                = "Azure/aci/azurerm"
  dns_name_label        = "cont01-example"
  os_type               = "linux"
  image_name            = "microsoft/aci-helloworld"
  resource_group_name   = "${var.resource_group_name}"
}

output "fqdn" {
  value = "${module.aci.containergroup_fqdn}"
}

output "ip" {
  value = "${module.aci.containergroup_ip_address}"
}

output "id" {
  value = "${module.aci.containergroup_id}"
}
```

## Authors

Originally created by [Alexander Shapoval](http://github.com/ashapoms)

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
