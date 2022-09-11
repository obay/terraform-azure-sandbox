# Azure Sandbox Terraform Module

This Terraform module deploys a sandbox environment in Azure that will be used for testing and development purposes. The module will create the following resources:
- Resource Group
- Virtual Network
- Subnets
- Network Security Group
- Virtual Machines
- Virtual Machine Network Interfaces
- Virtual Machine Network Interface IP Configurations
- Windows Virtual Machines
- Windows Virtual Machine Network Interfaces
- Windows Virtual Machine Network Interface IP Configurations
- Bastion Host


## Usage

To use this module, add the following code to your Terraform configuration:

```hcl
module "sandbox" {
  source          = "obay/sandbox/azure"
  version         = "1.0.0"
  location        = "westus2"
  EnvironmentName = "Sandbox"
  ProjectName     = "App2"
  AdminUsername   = "adminuser"
  AdminPassword   = "Jani2meFo6zie2ko7Aiqua8a"
}
```

You can then run `terraform init` and `terraform plan` to see the infrastructure plan.