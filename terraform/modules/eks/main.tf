module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = var.name_prefix
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids

  enable_irsa = true

  eks_managed_node_groups = {
    default = {
      name           = "${var.name_prefix}-ng"
      instance_types = var.node_instance_types
      desired_size   = var.node_desired_size
      min_size       = var.node_min_size
      max_size       = var.node_max_size

      capacity_type = "ON_DEMAND"
    }
  }
  enable_cluster_creator_admin_permissions = true
}
