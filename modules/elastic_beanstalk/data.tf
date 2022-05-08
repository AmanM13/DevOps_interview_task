################################################################################
# Elastic Beanstalk Data Source
################################################################################

# Data source to fetch the values of VPC.
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "aman-tfstate-s3"
    key    = "dev/vpc/vpc.tfstate"
    region = "eu-west-1"
  }
}

# Data source to fetch the values of public subnets.
data "terraform_remote_state" "public_subnets" {
  backend = "s3"
  config = {
    bucket = "aman-tfstate-s3"
    key    = "dev/vpc/vpc.tfstate"
    region = "eu-west-1"
  }
}



