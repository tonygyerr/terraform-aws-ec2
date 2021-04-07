resource "aws_security_group" "server" {
  name        = "${var.app_name}-sg"
  description = "Application Security Group"
  vpc_id      = var.vpc_config.vpc_id

  ingress {
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.vpc_config.cidr]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = [var.vpc_config.cidr]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_config.cidr]
  }

  ingress {
    from_port   = 8000
    to_port     = 9000
    protocol    = "tcp"
    cidr_blocks = [var.vpc_config.cidr]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = 6
    description = ""
    cidr_blocks = [var.vpc_config.cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0 #65535
    protocol    = -1 
    description = ""
    cidr_blocks = [var.vpc_config.open_cidr]
  }
}

resource "aws_security_group_rule" "server"{
  type = "ingress"
  from_port   = 0 
  to_port     = 0
  protocol    = "-1"
  security_group_id = aws_security_group.server.id
  source_security_group_id = aws_security_group.server.id
}