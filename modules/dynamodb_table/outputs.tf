################################################################################
# DynamoDB Table Outputs
################################################################################

output "dynamodb_table_id" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.id
  description = "The ID of DynamoDB table."
}

output "dynamodb_table_name" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.name
  description = "The name of DynamoDB table."
}

output "dynamodb_table_read_capacity" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.read_capacity
  description = "The read capacity of DynamoDB table."
}

output "dynamodb_table_write_capacity" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.write_capacity
  description = "The write capacity of DynamoDB table."
}

output "dynamodb_table_billing_mode" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.billing_mode
  description = "The billing mode of DynamoDB table."
}

output "dynamodb_table_hash_key" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.hash_key
  description = "The hash_key of DynamoDB table."
}
output "dynamodb_table_tags" {
  value       = resource.aws_dynamodb_table.main-dynamodb-table.tags_all
  description = "The tags of DynamoDB table."
}

