################################################################################
# Elastic Beanstalk Backend
################################################################################

terraform {
  backend "s3" {
    bucket         = "aman-tfstate-s3"
    key            = "dev/elastic_beanstalk/elastic_beanstalk.tfstate"
    region         = "eu-west-1"
    encrypt        = "true"
    dynamodb_table = "aman-terraform-state"
  }
}
