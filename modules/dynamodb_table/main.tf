################################################################################
# DynamoDB Table Module
################################################################################

resource "aws_dynamodb_table" "main-dynamodb-table" {
  name           = var.dynamodb_table_name
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = var.dynamodb_table_tags
}

