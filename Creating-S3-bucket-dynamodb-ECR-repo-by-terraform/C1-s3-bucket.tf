resource "aws_s3_bucket" "b" {
  bucket = "terraform-on-aws-eks-dev-petapp-1997"
  acl    = "private"

  versioning {
    enabled = true
  }
}