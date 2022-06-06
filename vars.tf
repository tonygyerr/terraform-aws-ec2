variable "aws_key_name" {
  type        = string
  description = "aws key name"
  default     = ""
}

variable "ami" {
  type = string
}

variable "app_name" {
  type        = string
  description = "Application Name"
  default     = ""
}

variable "aws_region" {
  description = "ec2 region for the vpc"
  default     = ""
}

variable "associate_public_ip_address" {
  type = bool
}

variable "app_vol_size" {
  description = "size for app vol"
  default     = "30"
}

variable "app_vol_type" {
  description = "volume type for app"
  default     = "gp2"
}

variable "app_vol_encryption" {
  default = "true"
}

variable "iam_instance_profile_name" {
  type    = string
  default = ""
}

variable "ssm_iam_instance_role" {
  type    = string
  default = ""
}

variable "instance_count" {
  type = string
}

variable "instance_type" {
  description = "app instance type"
  default     = "t2.micro"
}

variable "public_ipv4_pool" {
  description = "EC2 IPv4 address pool identifier or amazon. This option is only available for VPC EIPs."
  type        = string
  default     = ""
}

variable "network_interface" {
  description = "Network interface ID to associate with"
  type        = string
  default     = ""
}

variable "open_cidr" {
  description = "vpc cidr for subnet"
  type        = string
  default     = "0.0.0.0/0"
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

variable "subnet_id" {
  type = string
}

variable "security_groups" {
  description = "security groups applied to the load balancer. e.g. [\"sg-ab15ebe3\",\"sg-b012ecf8\"]"
  type        = list
  default     = []
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

variable "vpc" {
  description = "Boolean if the EIP is in a VPC or not"
  type        = bool
  default     = true
}

variable "vpc_config" {
  description = "configuration option for vpc"
  type        = map(string)
}

variable "vpc_security_group_ids" {
  description = "list of security group ids"
  type        = list
  default     = []
}

variable "profile" {
  description = "Enter name of profile"
  default     = ""
}

variable "aws_region" {
  description = "ec2 region for the vpc"
  default     = ""
}
