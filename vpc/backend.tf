################################################################################
# VPC Backend
################################################################################

terraform {
  backend "s3" {
    bucket         = "aman-tfstate-s3"
    key            = "dev/vpc/vpc.tfstate"
    region         = "eu-west-1"
    encrypt        = "true"
    dynamodb_table = "aman-terraform-state"
  }
}
