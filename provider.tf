terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "forestbucket1"
    key    = "gitbackup/terraform.tfstate"
    region = "us-east-1"
  }
}
