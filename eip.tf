resource "aws_eip" "this" {
  vpc                       = var.vpc
  instance                  = aws_instance.this.id
  network_interface         = var.network_interface
  associate_with_private_ip = aws_instance.this.private_ip
  public_ipv4_pool          = var.public_ipv4_pool

  tags = merge(map("Name", "${var.app_name}-eip"), merge(var.tags, var.acn_tags))
}