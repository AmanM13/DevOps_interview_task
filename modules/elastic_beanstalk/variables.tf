################################################################################
# Elastic Beanstalk Variables
################################################################################

variable "region" {
  description = "The region of elastic beanstalk."
  type        = string
  default     = null
}

variable "elastic_app" {
  description = "The name of elastic app."
  type        = string
  default     = null
}

variable "beanstalk_app_env" {
  description = "The environment of elastic beanstalk."
  type        = string
  default     = null
}

variable "solution_stack_name" {
  description = "The name of solution stack."
  type        = string
  default     = null
}

variable "tier" {
  description = "The tier of elastic beanstalk."
  type        = string
  default     = null
}


