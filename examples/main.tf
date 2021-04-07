module "ec2" {
  source = "git::https://github.com/tonygyerr/terraform-aws-ec2.git"
  ami                         = var.ami
  app_name                    = var.app_name
  aws_key_name                = var.aws_key_name
  associate_public_ip_address = var.associate_public_ip_address
  instance_count              = var.instance_count
  instance_type	              = var.instance_type
  network_interface           = var.network_interface
  public_subnet_ids           = var.public_subnet_ids
  subnet_id                   = var.subnet_id
  tags                        = var.tags
  vpc                         = true
  vpc_config                  = var.vpc_config 
} 

