locals {
  name_prefix = var.name_prefix
  azs         = ["${var.aws_region}a", "${var.aws_region}b"]
}

module "vpc" {
  source = "../../modules/vpc"

  name_prefix = local.name_prefix
  vpc_cidr    = var.vpc_cidr
  azs         = local.azs
}

module "eks" {
  source = "../../modules/eks"

  name_prefix        = local.name_prefix
  vpc_id             = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids

  cluster_version     = "1.29"
  node_instance_types = ["t3.small"]
  node_desired_size   = 2
  node_min_size       = 1
  node_max_size       = 3
}
