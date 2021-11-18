resource "aws_subnet" "dnd_public-1e" {
  vpc_id            = "${aws_vpc.dnd_vpc.id}"
  cidr_block        = "${var.vpc_public_subnets}"
  availability_zone = "us-east-1e"
  tags = {
    Name    = "dnd_public-1e"
    Service = "Subnet"
    Iac     = "Terraform"
    Azs     = "1e"

  }
}

resource "aws_subnet" "dnd_public-1f" {
  vpc_id            = "${aws_vpc.dnd_vpc.id}"
  cidr_block        = "10.0.200.0/24"
  availability_zone = "us-east-1f"
  tags = {
    Name    = "dnd_public-1f"
    Service = "Subnet"
    Iac     = "Terraform"
    Azs     = "1f"

  }
}
resource "aws_route_table_association" "public_1e" {
  subnet_id      = "${aws_subnet.production_public-1e.id}"
  route_table_id = "${aws_route_table.internet_gateway_route_table.id}"
}

resource "aws_route_table_association" "public_1f" {
  subnet_id      = "${aws_subnet.production_public-1f.id}"
  route_table_id = "${aws_route_table.internet_gateway_route_table.id}"
}