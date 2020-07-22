data "aws_availability_zones" "main" {}

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "current" {
  state = "current"
}