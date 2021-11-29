module "network" {
  source = "../network"
}

#Variáveis keyname
variable "key_name" {
    /* type = "map" */
    default = {
        "keyname-services" = "terraform-aws-dnd-devops-labs"
    }
}

#Variáveis das imagens
variable "amis" {
    /* type = "map" */
    default = {
        "ami-services" = "ami-083654bd07b5da81d"
    }
}

variable "subnet_ids" {
  /* default =  [ "dnd_private-1a.id", "dnd_private-1b.id", "dnd_public-1e.id", "dnd_public-1f.id"] */
  default =  [ "subnet-05e7f22914e22ff3d", "subnet-05c605158ac9441cf", "subnet-0868834d3ee9e240e", "subnet-0ceda87763b17146e"]
}
