################################################################################
# S3 Outputs
################################################################################

output "bucket_name" {
  value       = resource.aws_s3_bucket.main-bucket.bucket
  description = "The name of bucket."
}

output "bucket_domain_name" {
  value       = resource.aws_s3_bucket.main-bucket.bucket_domain_name
  description = "The domain name of bucket."
}

output "bucket_force_destroy" {
  value       = resource.aws_s3_bucket.main-bucket.force_destroy
  description = "The force destroy boolean of bucket."
}

output "bucket_region" {
  value       = resource.aws_s3_bucket.main-bucket.region
  description = "The region of bucket."
}

output "bucket_tags_all" {
  value       = resource.aws_s3_bucket.main-bucket.tags_all
  description = "The tags of bucket."
}

output "bucket_acl" {
  value       = resource.aws_s3_bucket_acl.main-acl.acl
  description = "The access control list of bucket."
}

output "bucket_versioning" {
  value       = resource.aws_s3_bucket_versioning.main-versioning.versioning_configuration
  description = "The versioning status of bucket."
}
