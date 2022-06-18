provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {
  state = "available"
}

locals {
  local_tags = merge(var.tags, {
    region = var.aws_region
  })
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.14"

  create_vpc = true
  name       = var.vpc_name
  cidr       = var.cidr

  azs             = data.aws_availability_zones.available.names
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway           = true
  single_nat_gateway           = true
  one_nat_gateway_per_az       = false
  create_database_subnet_group = false

  enable_vpn_gateway = false

  tags = local.local_tags
}