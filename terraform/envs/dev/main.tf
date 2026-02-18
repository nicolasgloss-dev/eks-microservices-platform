locals {
  name_prefix = "${var.project_name}-${var.environment}"
  azs         = ["${var.aws_region}a", "${var.aws_region}b"]
}

module "vpc" {
  source = "../../modules/vpc"

  name_prefix = local.name_prefix
  vpc_cidr    = var.vpc_cidr
  azs         = local.azs
}
