variable "aws_region" {
  description = "Name of the region on AWS"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Name of the target VPC to create"
  type        = string
  default     = "vpnbeast-vpc"
}

variable "vpc_cidr" {
  description = "CIDR for the target VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Tags for the networking resources"
  type        = map(string)
  default = {
    project = "thevpnbeast"
  }
}

variable "private_subnets" {
  description = "List of private subnets to be used"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "List of public subnets to be used"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
}

variable "cidr" {
  description = "CIDR for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}