locals {
  project  = "hanipoject_1"
  owner    = "hani1"
  vpc_name = "hani_vpc_1"
}






#module "mykeys" {   source = "./modules/mod_key_pair" }

variable "username" {
  type    = list(string)
  default = ["shath2", "raed2", "abeer1"]
}

module "myusers" { 
  source = "./modules/mod_users" 
  inp_username = var.username
  }



module "vpc" {
  source     = "./modules/mod_vpc"
  cidr_block = "10.123.0.0/16"
  vpc_name   = "${local.vpc_name}"
  az_code    = "a"
  owner      = "${local.owner}"
  project    = "${local.project}"
}
