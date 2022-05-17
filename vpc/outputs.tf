################################################################################
# VPC Outputs
################################################################################

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "The ID of VPC."
}

output "vpc_main_route_table_id" {
  value       = module.vpc.vpc_main_route_table_id
  description = "The main route table id of VPC."
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "The public subnets in VPC."
}
