variable "my_region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  description = "Existing VPC id"
  type = string
}

variable "subnet_ids" {
  description = "Existing subnet ids"
  type = list(string)
}