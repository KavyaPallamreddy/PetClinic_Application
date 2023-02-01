# Terraform Settings Block
terraform {
   
  required_version = "~> 1.3.7"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  
    helm = {
      source = "hashicorp/helm"
      #version = "2.8.0"
      version = "~> 2.8"
    }
    
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-dev-petapp-1997"
    key    = "dev/petclinic/terraform.tfstate"
    region = "us-west-2" 

    # For State Locking
    dynamodb_table = "petclinic"    
  }     
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}


