################################################################################
# DynamoDB Table Module
################################################################################

module "dynamodb_table" {
  source              = "../modules/dynamodb_table/"
  dynamodb_table_name = var.dynamodb_table_name
  dynamodb_table_tags = var.dynamodb_table_tags
}

