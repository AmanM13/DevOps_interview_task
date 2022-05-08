################################################################################
# VPC Variables
################################################################################

variable "name" {
  description = "The name of VPC."
  type        = string
  default     = null
}

variable "cidr" {
  description = "The CIDR of VPC."
  type        = string
  default     = null
}

variable "region" {
  description = "The region of VPC."
  type        = string
  default     = null
}