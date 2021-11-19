resource "aws_security_group" "acesso-dnd" {
  name        = "acesso-dnd"
  description = "Access SG VPN"
  vpc_id      = "${aws_vpc.dnd_vpc.id}"

/*   ingress {
    description = "Access MySQL"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = var.cidr_security_group
  }
*/

  ingress {
    description = "Access Ec2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "${var.cidr_security_group}"
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = "177.50.229.182/32"
  }

  ingress {
    description = "ping"
    from_port   = 20
    to_port     = 20
    protocol    = "ICMP"
    cidr_blocks = "${var.cidr_security_group}"
  }

/*   ingress {
    description = "Access from dnd-labs"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["177.50.229.182"]
  } */

  egress  {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name    = "dnd default vpc"
    Iac     = "Terraform"
    Service = "Security Group"
  }
}