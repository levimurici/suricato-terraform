output "aws_vpc" {
  value = "${aws_vpc.dnd_vpc.id}"
}

output "aws_subnet_private-1a" {
  value = "${aws_subnet.dnd_private-1a}"

}

output "aws_subnet_private-1b" {
  value = "${aws_subnet.dnd_private-1b}"

}
output "aws_subnet_public-1e" {
  value = "${aws_subnet.dnd_public-1e}"

}
output "aws_subnet_public-1f" {
  value = "${aws_subnet.dnd_public-1f}"

}