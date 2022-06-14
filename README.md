# AWS Network Module
[![CI](https://github.com/vpnbeast/network-terraform/workflows/CI/badge.svg?event=push)](https://github.com/vpnbeast/network-terraform/actions?query=workflow%3ACI)

Terraform module which creates networking infrastructure for Vpnbeast EC2 environment. Please see [MODULE.md](MODULE.md) for module documentation.

> This module assumes that a state bucket called `thevpnbeast-terraform-states` already exists on region `us-east-1`. If not, please first run [state-bucket-terraform module](https://github.com/vpnbeast/state-bucket-terraform) 

## Usage
You can use below module configuration in your terraform configuration:
```
module "ec2-mysql" {
  source                    = "git::https://github.com/vpnbeast/mysql-terraform.git"
  ...
}
```