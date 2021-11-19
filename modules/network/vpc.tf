resource "aws_vpc" "dnd_vpc" {
  default_security_group_id = "${aws_security_group.acesso-dnd.id}"
  cidr_block           = "${var.cidr_block}"
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name    = "dnd-vpc"
    Service = "Vpc"
    Iac     = "Terraform"
  }
}