variable "cidr_block" {
  description = "Default cidr vpc"
  /* type        = string */
  default     = "82.78.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC Availability zone default"
  /* type        = string */
  default     = "us-east-1a"
}

variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  /* type        = string */
  default     = "82.78.1.0/24"
}

variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  /* type        = string */
  default     = "82.78.199.0/24"
}

variable "cidr_security_group" {
  description = "value"
  /* type        = list(string) */
  default     = ["82.78.0.0/16"]
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
