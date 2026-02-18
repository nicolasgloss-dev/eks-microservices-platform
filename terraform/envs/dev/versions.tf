terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "REPLACE_ME-tfstate-bucket"
    key            = "eks-microservices-platform/dev/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "REPLACE_ME-terraform-locks"
    encrypt        = true
  }
}
