variable "ami" {
  type = string
}

variable "app_name" {
  type        = string
  description = "Application Name"
  default     = ""
}

variable "associate_public_ip_address" {
  type    = bool
}

variable "aws_key_name" {
  type        = string
  description = "aws key name"
  default     = ""
}

variable "aws_region" {
  description = "ec2 region for the vpc"
  default     = ""
}

variable "instance_count" {
  type = string
}

variable "instance_type" {
  description = "app instance type"
  #default     = "t2.micro"
}

variable "iam_instance_profile_name" {
  type        = string
  default     = ""
}

variable "ssm_iam_instance_role" {
  type        = string
  default     = ""
}

variable "network_interface" {
  description = "Network interface ID to associate with"
  type        = string
  default     = ""
}

variable "public_subnet_ids" {
  description = "list of subnet ids"
  type        = list
  default     = []
}

variable "private_subnet_ids" {
  description = "list of subnet ids"
  type        = list
  default     = []
}

variable "private_subnets" {
  description = "list of private subnets"
  type        = list
  default     = []
}

variable "public_subnets" {
  description = "list of public subnets"
  type        = list
  default     = []
}

variable "vpc_security_group_ids" {
  description = "list of security group ids"
  type        = list
  default     = []
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type        = map(string)
  description = "optional tags"

  # default = {
  #   name        = ""
  #   owner       = ""
  #   costcenter  = ""
  #   environment = ""
  #   project     = ""
  # }
}

variable "vpc_config" {
  description = "configuration option for vpc"
  type        = map(string)
}

variable "vpc" {
  description = "Boolean if the EIP is in a VPC or not"
  type        = bool
  default     = null
}

variable "profile" {
  description = "Enter name of profile"
  default     = ""
}

variable "userdata" {
  type    = string
  default = ""
}

variable "vpc_id" {
  type        = string
  default     = ""
}
