################################################################################
# DynamoDB Table Outputs
################################################################################

output "dynamodb_table_id" {
  value       = module.dynamodb_table.dynamodb_table_id
  description = "The ID of DynamoDB table."
}

output "dynamodb_table_name" {
  value       = module.dynamodb_table.dynamodb_table_name
  description = "The name of DynamoDB table."
}

output "dynamodb_table_read_capacity" {
  value       = module.dynamodb_table.dynamodb_table_read_capacity
  description = "The read capacity of DynamoDB table."
}

output "dynamodb_table_write_capacity" {
  value       = module.dynamodb_table.dynamodb_table_write_capacity
  description = "The write capacity of DynamoDB table."
}

output "dynamodb_table_billing_mode" {
  value       = module.dynamodb_table.dynamodb_table_billing_mode
  description = "The billing mode of DynamoDB table."
}

output "dynamodb_table_hash_key" {
  value       = module.dynamodb_table.dynamodb_table_hash_key
  description = "The hash_key of DynamoDB table."
}
output "dynamodb_table_tags" {
  value       = module.dynamodb_table.dynamodb_table_tags
  description = "The tags of DynamoDB table."
}

