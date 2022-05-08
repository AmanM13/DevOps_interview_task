################################################################################
# Elastic Beanstalk Module
################################################################################

module "elastic_beanstalk" {
  source              = "../modules/elastic_beanstalk"
  elastic_app         = var.elastic_app
  beanstalk_app_env   = var.beanstalk_app_env
  solution_stack_name = var.solution_stack_name
  tier                = var.tier
}
