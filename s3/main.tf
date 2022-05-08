################################################################################
# S3 Module
################################################################################

module "bucket" {
  source      = "../modules/s3/"
  bucket_name = var.bucket_name
  bucket_tags = var.bucket_tags
}
