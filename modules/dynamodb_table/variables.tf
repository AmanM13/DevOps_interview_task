################################################################################
# DynamoDB Table Variables
################################################################################

variable "dynamodb_table_name" {
  description = "The name of DynamoDB table"
  type        = string
  default     = null
}

variable "dynamodb_table_tags" {
  description = "The tags of DynamoDB table"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "The region of DynamoDB table."
  type        = string
  default     = null
}
