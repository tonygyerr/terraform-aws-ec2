provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
  profile = "iesawsna-sandbox"
}

terraform {
  backend "s3" {
  }
}

