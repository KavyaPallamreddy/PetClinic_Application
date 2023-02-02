# Input Variables
variable "aws_region" {
  description = "Region in which AWS resource to be created"
  type        = string
  default     = "us-west-2"

}


variable "ec2_instance_type" {
  description = "EC2 Instance type "
  type        = string
  default     = "t2.medium"

}


variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "terraform-key"
}


variable "ec2_instance_type_list" {
  description = "EC2 Instance type "
  type        = list(string)
  default     = ["t2.micro", "t2.small" , "t2.medium"]

}

variable "ec2_instance_type_map" {
  description = "EC2 Instance type "
  type        = map(string)
  default     = {
  "dev" = "t2.micro"
  "qa" = "t2.small" 
  "prod" = "t2.medium"
  }

}
 
 