resource "aws_instance" "services" {
    count = 1
    ami = "${var.amis["ami-services"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name["keyname-services"]}"
    /* key_name = "terraform-aws-dnd-devops-labs" */
    tags = {
      Name = "Serviços-${count.index}"
    }
    subnet_id = ["${aws_subnet.dnd_private-1a.id}", "${aws_subnet.dnd_public-1f.id}"]
    vpc_security_group_ids = ["${aws_security_group.acesso-dnd.id}"]
    /* vpc_security_group_ids = ["sg-01946c40cfbcc710e"] */

/*   provisioner "local-exec" {
    command     = <<EOT
      sudo apt-get update
      sudo apt install -y git
      sudo git clone https://github.com/levimurici/dnd-initial-scripts && cd dnd-initial-scripts
      sudo chmod +x docker-suricato.sh && sudo ./docker-suricato.sh
    EOT
  } */
}

resource "aws_instance" "suricato-bots" {
    count = 1
    ami = "${var.amis["ami-services"]}"
    instance_type = "t2.micro"
    key_name = "${var.key_name["keyname-services"]}"
    /* key_name = "terraform-aws-dnd-devops-labs" */
    tags = {
      Name = "suricato-bots"
    }
    subnet_id = ["${aws_subnet.dnd_private-1a.id}", "${aws_subnet.dnd_public-1f.id}"]
    vpc_security_group_ids = ["${aws_security_group.acesso-dnd.id}"]
    /* vpc_security_group_ids = ["sg-01946c40cfbcc710e"] */
}