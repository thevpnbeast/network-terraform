locals {
  tags = merge(var.tags, {
    region = var.aws_region
  })
}