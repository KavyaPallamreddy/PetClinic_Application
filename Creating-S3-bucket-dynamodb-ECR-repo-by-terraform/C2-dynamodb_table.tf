

resource "aws_dynamodb_table" "dynamodb-terraform-k8s" {
  name = "petclinic"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_dynamodb_table" "dynamodb-terraform-pettapp1997" {
  name = "dev-petapp-eks-cluster"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
 
  attribute {
    name = "LockID"
    type = "S"
  }
}

