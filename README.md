# DevOps interview task
## Initial steps
- Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html) and [Terraform](https://www.terraform.io/downloads.html)
### Features
- Modularized structure
- Terraform backend state maintained in S3 bucket with versioning enabled
- Isolation between the terraform tfstate files for the AWS resources for reducing impact
- Terraform tfvars used for passing variable values
- Consistent structure and naming convention
### Backend configuration
- Best for teams to store the Terraform state file remotely
- Teams have access to latest copy of infrastructure always
- Supports state locking and consistency checking
- Three things required: 
  - Terraform S3 backend resource
  - S3 bucket to store the state file
  - DynamoDB table for state locking and and consistency checking
  ```hcl
  terraform {
    backend "s3" {
      bucket         = "example-s3"
      key            = "path/to/my/key" // e.g "dev/vpc/vpc.tfstate"
      region         = "eu-west-1"
      encrypt        = "true"
      dynamodb_table = "example-table"
    }
  }
  ```
### Terraform resources structure
    ├── README.md                 // Description of the module and it's purpose
    ├── backend.tf                // To create terraform backend state configuration
    ├── data.tf                   // It contains the declarations for data sources
    ├── main.tf                   // The primary entrypoint for terraform resources
    ├── outputs.tf                // It contains the declarations for outputs
    ├── terraform.tfvars          // The file to pass the terraform variables values
    ├── variables.tf              // It contains the declarations for variables
    ├── versions.tf               // To specify terraform versions and providers
### Resource provisioning order
1. [DynamoDB Table](https://github.com/AmanM13/DevOps_interview_task/tree/main/dynamodb_table)
2. [S3](https://github.com/AmanM13/DevOps_interview_task/tree/main/s3)
3. [VPC](https://github.com/AmanM13/DevOps_interview_task/tree/main/vpc)
4. [Elastic Beanstalk](https://github.com/AmanM13/DevOps_interview_task/tree/main/elastic_beanstalk)
### Provisioning steps
1. Headover to the path of the resource to be deployed 
2. Run 
    ```
    terraform init
    ```
    ```
    terraform plan
    ```
    ```
    terraform apply
    ```
 
    | Command     | Description |
    | ----------- | ----------- |
    | terraform init | initializes a working directory containing Terraform configuration files |
    | terraform plan | creates an execution plan, which lets us preview the changes that Terraform plans to make to our infrastructure |
    | terraform apply | executes the actions proposed in the Terraform plan |

    **Note:**
    Above commands should be run from the resource directories. The modules directory consists of root modules and will not change anything unless it is necessary.
### Terraform directory structure
```
├── dynamodb_table
│   ├── main.tf
│   ├── outputs.tf
│   ├── README.md
│   ├── terraform.tfstate
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── versions.tf
├── elastic_beanstalk
│   ├── backend.tf
│   ├── main.tf
│   ├── outputs.tf
│   ├── README.md
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── versions.tf
├── modules
│   ├── dynamodb_table
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   ├── elastic_beanstalk
│   │   ├── data.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   └── s3
│       ├── main.tf
│       ├── outputs.tf
│       ├── variables.tf
│       └── versions.tf
├── README.md
├── s3
│   ├── main.tf
│   ├── outputs.tf
│   ├── README.md
│   ├── terraform.tfstate
│   ├── terraform.tfvars
│   ├── variables.tf
│   └── versions.tf
└── vpc
    ├── backend.tf
    ├── main.tf
    ├── outputs.tf
    ├── README.md
    ├── terraform.tfvars
    ├── variables.tf
    └── versions.tf
```
