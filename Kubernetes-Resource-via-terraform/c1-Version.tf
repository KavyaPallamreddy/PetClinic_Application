terraform {
    required_version = "~> 1.3.7"
    required_providers {
        aws = {
          source = "hashicorp/aws"
          version = "~> 4.0"
        }
         kubernetes = {
          source = "hashicorp/kubernetes"
          version = "~> 2.17"
        }
      }
      # Adding Backend as S3 for Remote State Storage
    backend "s3" {
        bucket = "terraform-on-aws-eks-dev-petapp-1997"
        key    = "dev/app1k8s/terraform.tfstate"
        region = "us-west-2" 

        # For State Locking
        dynamodb_table = "dev-app1k8s"    
  }   
    
    }