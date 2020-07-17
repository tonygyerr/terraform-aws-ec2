#--------------------------------------------------------------
# general
#--------------------------------------------------------------	
app_name                    = "computer-vision"
aws_key_name                = "jenkins-server"
network_interface           = "eni-0f26d3202bdc88a38"
public_subnet_ids           = ["10.0.1.0/24", "10.0.2.0/24"]
vpc                         = true
vpc_config = {
  region            = "us-east-1"
  cidr              = "10.0.0.0/16"
  open_cidr         = "0.0.0.0/0"
  number_of_subnets = "3"
  instance_tenancy  = "default"
  vpc_id            = "vpc-030223597984c3c68"
  # public_ecs_subnets  = ["10.0.0.0/28", "10.0.0.16/28", "10.0.0.32/28"]
  # private_ecs_subnets = ["10.0.0.48/28", "10.0.0.64/28", "10.0.0.80/28"]
  # private_db_subnets  = ["10.0.0.96/28", "10.0.0.112/28", "10.0.0.128/28"]
  # private_lb_subnets  = ["10.0.0.144/28", "10.0.0.160/28", "10.0.0.176/28"]
}

tags = {
  Owner       = "user"
  Environment = "dev"
  Name        = "vpc-iac"
  Region      = "us-east-1"
  Owner       = "aabg-fuse"
  CostCenter  = "aabg"
}

#--------------------------------------------------------------
# EC2
#--------------------------------------------------------------
ami                         = "ami-0c322300a1dd5dc79"
associate_public_ip_address = true
instance_count              = "1"
instance_type	              = "t2.micro"
subnet_id                   = "subnet-067a9fe7707359bec"
