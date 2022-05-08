# ################################################################################
# Elastic Beanstalk Outputs
# ################################################################################

output "application_name" {
  value       = resource.aws_elastic_beanstalk_application.main-app.name
  description = "The name of elastic application."
}

output "environment_name" {
  value       = resource.aws_elastic_beanstalk_environment.main-env.name
  description = "The name of environment."
}

output "solution_stack_name" {
  value       = resource.aws_elastic_beanstalk_environment.main-env.solution_stack_name
  description = "The name of solution stack."
}

output "tier" {
  value       = resource.aws_elastic_beanstalk_environment.main-env.tier
  description = "The tier of the environment."
}
