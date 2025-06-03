provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "demobucket-7599"
    key    = "GitHUB-ACTION_CICD/s3"
    region = "us-east-1"
    use_lockfile = true    # <-- replace dynamodb_table with this
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-s3-bucket-615516515644"
  force_destroy = true
}

resource "aws_s3_bucket_versioning" "example" {
  bucket = aws_s3_bucket.example.id

  versioning_configuration {
    status = "Enabled"
  }
}
