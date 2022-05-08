################################################################################
# S3 Outputs
################################################################################

output "bucket_name" {
  value       = module.bucket.bucket_name
  description = "The name of bucket."
}

output "bucket_domain_name" {
  value       = module.bucket.bucket_domain_name
  description = "The domain name of bucket."
}

output "bucket_force_destroy" {
  value       = module.bucket.bucket_force_destroy
  description = "The force destroy boolean of bucket."
}

output "bucket_region" {
  value       = module.bucket.bucket_region
  description = "The region of bucket."
}

output "bucket_tags_all" {
  value       = module.bucket.bucket_tags_all
  description = "The tags of bucket."
}

output "bucket_acl" {
  value       = module.bucket.bucket_acl
  description = "The access control list of bucket."
}

output "bucket_versioning" {
  value       = module.bucket.bucket_versioning
  description = "The versioning status of bucket."
}
