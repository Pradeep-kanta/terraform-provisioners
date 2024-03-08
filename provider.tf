terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
     bucket = "aws-remote-bucket"
     key    = "provisioner"
     region = "us-east-1"
     dynamodb_table = "aws-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}