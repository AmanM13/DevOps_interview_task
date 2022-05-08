# S3 Module

This module makes it easier to create a S3 bucket with Access Control List and Versioning.

## Usage

Basic usage of this module is as follows:

* S3

  ```hcl
  module "bucket" {
    source      = "../modules/s3/"
    bucket_name = var.bucket_name
    bucket_tags = var.bucket_tags
  }
  ```

* Provide the variables values to the modules from terraform.tfvars file.

  ```hcl
  bucket_name = "example-s3"
  bucket_tags = {
    Environment = "example-environment"
  }
  ```

* Perform the following commands in the directory:

   Get the plugins
   ```
   terraform init
   ``` 
   Create the infrastructure plan
   ```
   terraform plan
   ``` 
   Execute the infrastructure plan
   ```
   terraform apply
   ``` 
   Destroy the built infrastructure
   ```
   terraform destroy
   ``` 
