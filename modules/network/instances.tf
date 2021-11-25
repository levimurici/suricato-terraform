resource "aws_instance" "services" {
    ami = "${var.amis["ami-services"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name["keyname-services"]}"
    tags = {
      /* Name = "Serviços-${count.index}" */
      Name = "micro-serviços"
    }
    subnet_id = "${aws_subnet.dnd_public-1e.id}"
    /* subnet_id = "${element(var.subnet_ids, count.index)}" */
    vpc_security_group_ids = ["${aws_security_group.acesso-dnd.id}"]

/* provisioner "file" {
  source = "../scripts/dnd-initial-scripts/docker-suricato.sh"
  destination = "/tmp/scripts/docker-suricato.sh"
}
provisioner "local-exec" {
  inline = [
    "sudo chmod +x /tmp/scripts/docker-suricato.sh",
    "sudo sed -i -e 's/\r$//' /tmp/scripts/docker-suricato.sh",  # Remove the spurious CR characters.
    "sudo /tmp/scripts/docker-suricato.sh"
  ]
} */
}

resource "aws_instance" "suricato-bots" {
    ami = "${var.amis["ami-services"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name["keyname-services"]}"
    tags = {
      Name = "suricato-bots"
    }
    subnet_id = "${aws_subnet.dnd_public-1e.id}"
    /* subnet_id = "${element(var.subnet_ids, count.index)}" */
    vpc_security_group_ids = ["${aws_security_group.acesso-dnd.id}"]
}