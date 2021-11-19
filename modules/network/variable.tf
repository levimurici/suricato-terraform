variable "cidr_block" {
  description = "Default cidr vpc"
  /* type        = string */
  default     = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC Availability zone default"
  /* type        = string */
  default     = "us-east-1a"
}

variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  /* type        = string */
  default     = "10.0.1.0/24"
}

variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  /* type        = string */
  default     = "10.0.3.0/24"
}

variable "cidr_security_group" {
  description = "value"
  /* type        = list(string) */
  default     = ["10.0.0.0/16"]
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

