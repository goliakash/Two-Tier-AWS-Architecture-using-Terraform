variable "project_name" {
    description = "The name of the project"
    type = string
}

variable "vpc_cidr"{
    description = "VPC CIDR block"
    type = string
}

variable "public_subnet_cidr" {
    description = "Public subnet CIDR block"
    type = string
}

variable "private_subnet_cidrs" {
    description = "Private subnet CIDR block"
    type = list(string)
}
variable "availability_zone" {
  type        = list(string)
  description = "Availability zone"
}