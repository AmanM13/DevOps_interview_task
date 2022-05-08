# VPC Module

This module makes it easier to create a VPC.

## Usage

Basic usage of this module is as follows:

* VPC

  ```hcl
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
  ```

* Provide the variables values to the modules from terraform.tfvars file.

  ```hcl
  name   = "example-vpc"
  cidr   = "10.0.0.0/16"
  region = "eu-west-1"
  ```

* Perform the following commands in the directory:

   Get the plugins
   ```
   terraform init
   ``` 
   Create the infrastructure plan
   ```
   terraform plan
   ``` 
   Execute the infrastructure plan
   ```
   terraform apply
   ``` 
   Destroy the built infrastructure
   ```
   terraform destroy
   ``` 
