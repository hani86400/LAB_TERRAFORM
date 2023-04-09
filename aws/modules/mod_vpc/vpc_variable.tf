variable "cidr_block" {
    type = string
    description = "CIDR block to given to the VPC"
}

variable "az_code" {
    type = string
  description = "Code for the availability zone e.g 'a','b','c' "
}

variable "vpc_name" {
	type = string
	description = "Name of VPC"
}

variable "owner" {
  type = string
  description = "Name of the owner"
}

variable "project" {
  type = string
  description = "Name of the project"
}