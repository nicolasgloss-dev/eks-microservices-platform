variable "aws_region" {
  type        = string
  description = "AWS region to deploy into."
  default     = "ap-southeast-2"
}

variable "project_name" {
  type        = string
  description = "Project name used for tagging and naming."
  default     = "eks-microservices-platform"
}

variable "environment" {
  type        = string
  description = "Environment name."
  default     = "dev"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC."
  default     = "10.10.0.0/16"
}

variable "name_prefix" {
  type        = string
  description = "Short prefix used for resource names to avoid AWS length limits."
  default     = "ng-eks-dev"
}
