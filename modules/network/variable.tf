module "instances" {
  source = "../instances"
}

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
