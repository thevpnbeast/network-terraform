# AWS Network Module
Terraform module which creates networking infrastructure for Vpnbeast EC2 environment. Please see [MODULE.md](MODULE.md) for module documentation.

> This module assumes that a state bucket called `thevpnbeast-terraform-states` already exists on region `us-east-1`. If not, please first run [state-bucket-terraform module](https://github.com/thevpnbeast/state-bucket-terraform) 

## Usage
You can use below module configuration in your terraform configuration:
```
module "ec2-mysql" {
  source                    = "git::https://github.com/thevpnbeast/network-terraform.git"
  ...
}
```