provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "demobucket-7599"
    key = "TERRAFORM-PROJECT/ec2"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"    
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-s3-bucket-123456"
  force_destroy = true
}
