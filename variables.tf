
variable "network_name" {
  description = "Name of the Network"
  type        = string
}

variable "cidr_block" {
  description = "CIDR Block for the Network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "region" {
  description = "Region to provision network"
  type        = string
}

variable "subnets" {
  description = "Subnets inside the Network"
  type        = map(any)
  default = {
    "0" = {
      cidr_block        = "10.0.0.0/24"
      availability_zone = "eu-central-1a"
    }
  }
}
