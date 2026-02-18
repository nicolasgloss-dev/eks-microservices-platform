EKS Microservices Platform (Terraform)

Production-style Kubernetes platform on AWS EKS built with Terraform.

This project is designed to reflect real team practices used in Sydney cloud engineering environments, including:
Infrastructure as Code with Terraform
Remote state management (S3 + DynamoDB locking)
Multi-environment structure (dev and prod)
Secure VPC networking (multi-AZ public and private subnets)
Amazon EKS with managed node groups
IRSA and least-privilege access patterns
CI validation and plan workflows via GitHub Actions

The goal of this project is to simulate how a team would design, deploy, and operate a scalable Kubernetes-based platform in AWS using production-oriented practices.