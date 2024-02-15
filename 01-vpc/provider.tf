terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }

  backend "s3" {
        bucket = "vinod-tf-workspace"
        key    = "state"
        region = "us-east-1"
        dynamodb_table = "vinod-tf-workspace"
  }
  
}

provider "aws" {
  # Configuration options
}