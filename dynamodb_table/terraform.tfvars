################################################################################
# DynamoDB Table Variable Values
################################################################################

dynamodb_table_name = "aman-terraform-state"
dynamodb_table_tags = {
  Name        = "DynamoDB Terraform State Lock Table"
  Environment = "dev"
}
region = "eu-west-1"
