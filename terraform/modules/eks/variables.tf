variable "name_prefix" {
  type        = string
  description = "Name prefix for EKS resources"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for the EKS cluster"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for EKS worker nodes"
}

variable "cluster_version" {
  type        = string
  description = "EKS Kubernetes version"
  default     = "1.29"
}

variable "node_instance_types" {
  type        = list(string)
  description = "EC2 instance types for the managed node group"
  default     = ["t3.small"]
}

variable "node_desired_size" {
  type        = number
  description = "Desired number of nodes"
  default     = 2
}

variable "node_min_size" {
  type        = number
  description = "Minimum number of nodes"
  default     = 1
}

variable "node_max_size" {
  type        = number
  description = "Maximum number of nodes"
  default     = 3
}
