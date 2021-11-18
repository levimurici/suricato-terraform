terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket  = "suricato-dump-services"
    /* key     = "${var.key_name["keyname-services"]}" */
    key_name = "terraform-aws-dnd-devops-labs"
    region  = "us-east-1"
    encrypt = true
  }

}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Enviroment = "Production"
      Name       = "Provider Tag"
    }
  }
}