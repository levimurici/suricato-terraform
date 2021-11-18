resource "aws_subnet" "dnd_private-1a" {
  vpc_id            = "${aws_vpc.dnd_vpc.id}"
  cidr_block        = "${var.vpc_private_subnets}"
  availability_zone = "us-east-1a"
  tags = {
    Name    = "dnd_private-1a"
    Service = "Subnet"
    Iac     = "Terraform"
    Azs     = "1a"

  }
}
resource "aws_subnet" "dnd_private-1b" {
  vpc_id            = "${aws_vpc.dnd_vpc.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name    = "dnd_private-1b"
    Service = "Subnet"
    Iac     = "Terraform"
    Azs     = "1b"

  }
}
