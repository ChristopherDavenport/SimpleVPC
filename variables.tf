variable "name" {}

variable "cidr_16" {
  description = "The cidr 16 block to allocate ex. 10.0"
  default = "10.0"
}

variable "public_subnet_ip_start" {
  description = "/24 subnet to start public subnets at"
  default = 1
}

variable "public_subnet_count" {
  description = "A count of how many public subnets to allocate"
  default = 0
}

variable "private_subnet_ip_start" {
  description = "/24 subnet to start private subnets at"
  default = 100
}

variable "private_subnet_count" {
  description = "A count of how many private subnets to allocate"
  default = 0
}

variable "database_subnet_ip_start" {
  description = "/24 subnet to start databse subnets at"
  default = 200
}

variable "database_subnet_count" {
  description = "A count of how many database subnets to allocate"
  default = 0
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
