################################################################################
# VPC Module
################################################################################

data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = var.name
  cidr               = var.cidr
  azs                = data.aws_availability_zones.available.names
  private_subnets    = [cidrsubnet(var.cidr, 8, 0), cidrsubnet(var.cidr, 8, 1)]
  public_subnets     = [cidrsubnet(var.cidr, 8, 2), cidrsubnet(var.cidr, 8, 3)]
  enable_nat_gateway = true
  enable_vpn_gateway = true
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

