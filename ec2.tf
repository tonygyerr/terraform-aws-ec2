
resource "aws_instance" "this" {
  ami                    = var.ami
  availability_zone      = var.vpc_config.region
  instance_type          = var.instance_type
  # key_name               = var.aws_key_name
  vpc_security_group_ids = [aws_security_group.server.id]
  subnet_id              = var.subnet_id
  source_dest_check      = false
}

resource "aws_ebs_volume" "this" {
  availability_zone = data.aws_availability_zones.current.names[0]
  size              = var.app_vol_size
  type              = var.app_vol_type
  encrypted         = var.app_vol_encryption
  
  tags = merge(map("Name", "${var.app_name}-vol"), merge(var.tags, var.acn_tags))
}

resource "aws_volume_attachment" "this" {
  device_name = "/dev/sdz"
  volume_id   = aws_ebs_volume.this.id
  instance_id = aws_instance.this.id
}