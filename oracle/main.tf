provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "/root/ragu_project/Modules/vpc"
  my_region  = "ap-south-1"
  vpc_cidr   = "100.100.0.0/16"
  AZ1 = "ap-south-1a"
  AZ2 = "ap-south-1c"
  pub_sub = "100.100.1.0/24"
  pri_sub = "100.100.2.0/24"
  tags    = "Oracle"
}

