# DynamoDB Table Module

This module makes it easier to create a DynamoDB Table.

## Usage

Basic usage of this module is as follows:

* DynamoDB Table

  ```hcl
  module "dynamodb_table" {
    source              = "../modules/dynamodb_table/"
    dynamodb_table_name = var.dynamodb_table_name
    dynamodb_table_tags = var.dynamodb_table_tags
  }
  ```

* Provide the variables values to the modules from terraform.tfvars file.

  ```hcl
  dynamodb_table_name = "example-terraform-state"
  dynamodb_table_tags = {
    Name        = "DynamoDB Terraform State Lock Table"
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
