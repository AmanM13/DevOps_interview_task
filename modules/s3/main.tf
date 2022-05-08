################################################################################
# S3 Module
################################################################################

resource "aws_s3_bucket" "main-bucket" {
  bucket = var.bucket_name
  tags   = var.bucket_tags
}

resource "aws_s3_bucket_acl" "main-acl" {
  bucket = aws_s3_bucket.main-bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_versioning" "main-versioning" {
  bucket = aws_s3_bucket.main-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
