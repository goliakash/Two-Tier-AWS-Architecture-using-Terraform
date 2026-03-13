variable "project_name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "db_sg_id" {
  type = string
}

variable "av" {
  
  type = list(string)
}