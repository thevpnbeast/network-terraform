data "aws_availability_zones" "available" {
  state = "available"
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

  enable_nat_gateway           = length(var.private_subnets) > 0 ? true : false
  single_nat_gateway           = length(var.private_subnets) > 0 ? true : false
  one_nat_gateway_per_az       = false
  create_database_subnet_group = false

  enable_vpn_gateway = false

  tags = local.tags
}