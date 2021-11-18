provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}

resource "aws_instance" "services" {
    depends_on = ["aws_s3_bucket.dump-services"]
    count = 1
    ami = "${var.amis["ami-services"]}"
    key_name = "${var.key_name["keyname-services"]}"
    tags = {
      Name = "Serviços-${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-dnd.id}"]

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
    tags = {
      Name = "suricato-bots"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-dnd.id}"]
}

resource "aws_s3_bucket" "dump-services" {
  bucket = "suricato-dump-services"
  acl    = "private"

  tags = {
    Name        = "suricato-dump-services"
    Environment = "Dev"
    }
}