# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.15.0"
#     }
#   }

#   backend "s3" {
#     bucket   = "roboshop-remote-state"
#     key = "firewalls-dev"
#     region = "us-east-1"
#     dynamodb_table = "roboshop-locking"
#   }
# }

# provider "aws" {
#   # Configuration options
#   # you can give access key and secret key here, but security problem
#   region = "us-east-1"
# }

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.30.0"
    }
  }

  backend "s3" {
        bucket = "vinod-tf-workspace"
        key    = "firewalls-dev"
        region = "us-east-1"
        dynamodb_table = "vinod-tf-workspace"
  }
  
}

provider "aws" {
  # Configuration options
}