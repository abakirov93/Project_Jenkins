# Translation
variable "region" {}
variable "region_name" {}


# Instance 
variable "owner_name" {}
variable "image_value" {}

variable "instance_type" {}

variable "key_name" {}

variable "ingress_cidr_blocks" {
  type = "list"
}


# null_resource.tf inline 
variable "user" {}
variable "host" {}
variable "java_version" {}
variable "jenkins_version" {}


# VPC 
variable "pub_subnet_cidr1" {}
variable "pub_subnet_cidr2" {}
variable "pub_subnet_cidr3" {}

variable "priv_subnet_cidr1" {}
variable "priv_subnet_cidr2" {}
variable "priv_subnet_cidr3" {}

variable "vpc_cidr" {}
variable "nat_cidr_block" {}
variable "ig_cidr_block" {}

variable "az1" {}
variable "az2" {}
variable "az3" {}


variable "tags" {
  type = "map"
}