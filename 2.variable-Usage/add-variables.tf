# Create a Terraform script that provisions an AWS S3 bucket. Ensure the bucket has a unique name and is created in a specific region.

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}

variable "aws_region" {
  description = "AWS region where the bucket will be created"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "victory-tf-bucket" # Replace with your desired bucket name, ensuring it adheres to AWS naming conventions
}