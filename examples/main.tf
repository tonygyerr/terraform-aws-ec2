module "ec2" {
  source = "git::https://github.com/tonygyerr/terraform-aws-ec2.git"
  ami                         = var.ami
  app_name                    = var.app_name
  aws_key_name                = var.aws_key_name
  associate_public_ip_address = var.associate_public_ip_address
  instance_count              = var.instance_count
  instance_type	              = var.instance_type
  iam_instance_profile_name   = var.iam_instance_profile_name
  network_interface           = var.network_interface
  # public_subnet_ids           = var.public_subnet_ids
  private_subnet_ids          = var.private_subnet_ids
  subnet_id                   = var.subnet_id
  userdata                    = var.userdata
  tags                        = var.tags
  vpc                         = true
  vpc_config                  = var.vpc_config 
} 

