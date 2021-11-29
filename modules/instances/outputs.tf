/* output "aws_vpc" {
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

} */

output "services_id" {
  value = aws_instance.services.id
}

output "services_ip" {
  value = aws_instance.services.public_ip
}

output "services_public_dns" {
  value = aws_instance.suricato-bots.public_dns
}

output "bots_id" {
  value = aws_instance.services.id
}

output "bots_ip" {
  value = aws_instance.suricato-bots.public_ip
}

output "bots_public_dns" {
  value = aws_instance.suricato-bots.public_dns
}