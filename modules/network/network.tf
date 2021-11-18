# Create a VPC
resource "aws_vpc" "dnd_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dnd_vpc"
  }
}

resource "aws_subnet" "dnd_subnet" {
  vpc_id            = "${aws_vpc.dnd_vpc.id}"
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "dnd_subnet"
  }
}