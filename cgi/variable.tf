variable "my_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "AZ1" {
  default = "ap-south-1a"
}

variable "AZ2" {
  default = "ap-south-1b"
}

variable "pub_sub" {
  default = "10.0.1.0/24"
}

variable "pri_sub" {
  default = "10.0.2.0/24"
}

variable "tags" {
  description = "Common tags for all resources"
  type        = string
  default = "CGI"
}
