#Terraform remote state
data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
     bucket = "terraform-on-aws-eks-dev-petapp-1997"
     key    = "dev/eks-cluster/terraform.tfstate"
     region = "us-west-2" 
    
    }
  }
  

