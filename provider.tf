provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Enviroment = "Production"
      Name       = "Provider Tag"
    }
  }
}