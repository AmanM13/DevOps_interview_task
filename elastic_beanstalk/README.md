# Elastic Beanstalk Module

This module makes it easier to create Elastic Beanstalk Application and Environment.

## Usage

Basic usage of this module is as follows:

* Elastic Beanstalk

  ```hcl
  module "elastic_beanstalk" {
    source              = "../modules/elastic_beanstalk"
    elastic_app         = var.elastic_app
    beanstalk_app_env   = var.beanstalk_app_env
    solution_stack_name = var.solution_stack_name
    tier                = var.tier
  }
  ```

* Provide the variables values to the modules from terraform.tfvars file.

  ```hcl
  elastic_app         = "example-elastic-app"
  beanstalk_app_env   = "example-beanstalk-env"
  region              = "eu-west-1"
  tier                = "WebServer"
  solution_stack_name = "64bit Amazon Linux 2 v3.3.13 running Python 3.8"
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
