# IaC-terraform-AWS

The Above files contain the code for my web application that I had deployed utilizing Terraform with Infrastructure as a code. Before, I had little knowledge about Terraform and its working mechanisms. This is the roadmap that I took with the help of a DevOps Developer from YouTube to learn and deploy web applications using Terraform. 

# Initial Setup
## 02 - Overview + Setup

## Install Terraform

Official installation instructions from HashiCorp: https://learn.hashicorp.com/tutorials/terraform/install-cli

## AWS Account Setup

AWS Terraform provider documentation: https://registry.terraform.io/providers/hashicorp/aws/latest/docs#authentication

1) create non-root AWS user
2) Add the necessary IAM roles (e.g. AmazonEC2FullAccess)
3) Save Access key + secret key (or use AWS CLI `aws configure` -- https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)

## Hello World

`./main.tf` contains minimal configuration to provision an EC2 instance.

1) `aws configure`
2) `terraform init`
3) `terraform plan`
4) `terraform apply`

## Remote Backend

The remote backend has been enabled initially to store the TF files in a remote cloud backend to demonstrate using cloud resources to collaborate securely. 
Different backends that were explored are:
  1. local backend
  2. Terraform Cloud
  3. AWS Cloud S3 + Dynamo DB
Steps to initialize the backend in AWS and manage it with Terraform:

  1. Use config from ./aws-backend/ (init, plan, apply) to provision the s3 bucket       and dynamo DB table with local state
  2. Uncomment the remote backend configuration
  3. Reinitialize with terraform init.

## Deploying Web Application in AWS

The following is the architecture diagram for the infrastructure that we deployed.

![image](https://github.com/Lohitgaddipati/IaC-using-terraform-AWS/assets/101139863/6880e0b1-cc28-4b03-a22a-9ad96b474d08)

Included resources are:
  1. EC2 Instances
  2. S3 Buckets
  3. RDS Instance
  4. Load Balancer
  5. Route 53 DNS.

Over the project, this infrastructure was improved upon by using different modules and variables.






 
