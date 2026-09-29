terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "./modules/terraform_ec2"

  instance_type = "t3.micro"
  ami_id        = "ami-0b5f627205de80196" # Amazon Linux 2 AMI
  key_name      = "terraform_module"      # Replace with your key pair name
  instance_name = "terraform-ec2-instance-demo"
}