provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "echo-dev"
}

terraform {
  backend "s3" {
  }
}

