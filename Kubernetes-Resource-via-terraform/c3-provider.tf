# Terraform AWS Provider Block
provider "aws" {
    region = "us-west-2"
}

data "aws_eks_cluster" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster_id
}


data "aws_eks_cluster_auth" "cluster" {
  name = data.terraform_remote_state.eks.outputs.cluster_id
} 


# Terraform Kubernetes Provider
provider "kubernetes" {
  # host is nthg but API endpoint
  host = data.terraform_remote_state.eks.outputs.cluster_endpoint
  cluster_ca_certificate = base64decode(data.terraform_remote_state.eks.outputs.cluster_certificate_authority_data)
  # token to use to authenticate with the cluster
  token = data.aws_eks_cluster_auth.cluster.token
}
