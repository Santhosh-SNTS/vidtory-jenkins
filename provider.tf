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
    bucket = "dilema"
    key    = "gitbackup/terraform.tfstate"
    region = "us-west-2"
  }
}
