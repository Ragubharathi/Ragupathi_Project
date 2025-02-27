provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "/root/ragu_project/Modules/vpc"
  my_region = var.my_region
  vpc_cidr   = var.vpc_cidr
  AZ1 = var.AZ1
  AZ2 = var.AZ2
  pub_sub = var.pub_sub
  pri_sub = var.pri_sub
  tags    = var.tags
}

