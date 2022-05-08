# ################################################################################
# Elastic Beanstalk Outputs
# ################################################################################

output "application_name" {
  value       = module.elastic_beanstalk.application_name
  description = "The name of elastic application."
}

output "environment_name" {
  value       = module.elastic_beanstalk.environment_name
  description = "The name of environment."
}

output "solution_stack_name" {
  value       = module.elastic_beanstalk.solution_stack_name
  description = "The name of solution stack."
}

output "tier" {
  value       = module.elastic_beanstalk.tier
  description = "The tier of the environment."
}
