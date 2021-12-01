resource "aws_security_group" "acesso-dnd" {
  name        = "acesso-dnd"
  description = "Access SG VPN"
  vpc_id      = aws_vpc.dnd_vpc.id

  ingress {
    description = "Access Ec2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidr_security_group
  }

  ingress {
    description = "Acesso do lab"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["177.50.230.47/32"]
  }

  ingress {
    description = "ping"
    from_port   = 20
    to_port     = 20
    protocol    = "ICMP"
    cidr_blocks = var.cidr_security_group
  }

  egress  {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "dnd default vpc"
    Iac     = "Terraform"
    Service = "Security Group"
  }
}