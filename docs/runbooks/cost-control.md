Cost Control and Cleanup (Dev Environment)
This project provisions infrastructure that incurs ongoing AWS charges.

The following resources generate continuous cost:
NAT Gateway
Elastic IP
EKS Control Plane
EC2 worker nodes

Development Best Practice
The dev environment should be destroyed when not actively working on the project.

Destroy Dev Environment
From the repository root:
cd terraform/envs/dev
terraform destroy

Confirm the destroy plan before approving.

Verify All Resources Are Removed
After destroy completes:
Confirm no NAT Gateway exists
Confirm no EC2 instances exist
Confirm no EKS cluster exists
Confirm no Elastic IP remains allocated

Remote State
The Terraform state bucket and DynamoDB lock table are intentionally retained and should not be destroyed.