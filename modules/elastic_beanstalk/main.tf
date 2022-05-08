################################################################################
# Elastic Beanstalk Module
################################################################################

# Create elastic beanstalk application

resource "aws_elastic_beanstalk_application" "main-app" {
  name = var.elastic_app
}

# Create elastic beanstalk environment

resource "aws_elastic_beanstalk_environment" "main-env" {
  name                = var.beanstalk_app_env
  application         = aws_elastic_beanstalk_application.main-app.name
  solution_stack_name = var.solution_stack_name
  tier                = var.tier

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = data.terraform_remote_state.vpc.outputs.vpc_id
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "AssociatePublicIpAddress"
    value     = "True"
  }
  setting {
    namespace = "aws:ec2:vpc"
    name      = "Subnets"
    value     = join(",", data.terraform_remote_state.vpc.outputs.public_subnets)
  }
  setting {
    namespace = "aws:elasticbeanstalk:environment:process:default"
    name      = "MatcherHTTPCode"
    value     = "200"
  }
  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = "t2.micro"
  }
  # setting {
  #   namespace = "aws:elasticbeanstalk:environment"
  #   name      = "LoadBalancerType"
  #   value     = "application"
  # }
  # setting {
  #   namespace = "aws:ec2:vpc"
  #   name      = "ELBScheme"
  #   value     = "internet facing"
  # }
  # setting {
  #   namespace = "aws:autoscaling:asg"
  #   name      = "MinSize"
  #   value     = 1
  # }
  # setting {
  #   namespace = "aws:autoscaling:asg"
  #   name      = "MaxSize"
  #   value     = 2
  # }
  # setting {
  #   namespace = "aws:elasticbeanstalk:healthreporting:system"
  #   name      = "SystemType"
  #   value     = "enhanced"
  # } 
}

# Lines of code are commented as not required as of now.
