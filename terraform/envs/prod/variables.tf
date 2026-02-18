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
  default     = "prod"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC."
  default     = "10.20.0.0/16"
}
