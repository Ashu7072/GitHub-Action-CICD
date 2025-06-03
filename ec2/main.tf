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

resource "aws_instance" "example" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleEC2"
  }
}
