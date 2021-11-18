resource "aws_eip" "vpc_iep" {
  vpc = true
  tags = {
    Name    = "Public IP production"
    Service = "Elastic Ip"
    Iac     = "Terraform"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.vpc_iep.id}"
  subnet_id     = "${aws_subnet.production_public-1e.id}"

  tags = {
    Name = "Nat-Gateway"
  }
}

resource "aws_route_table" "nat" {
  vpc_id = "${aws_vpc.dnd_vpc.id}"
  tags = {
    Name = "Private-Route"
  }
}

resource "aws_route" "nat_access" {
  route_table_id         = "${aws_route_table.nat.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.nat.id}"
}
