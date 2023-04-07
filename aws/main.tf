#module "mykeys" {   source = "./modules/mod_key_pair" }

variable "username" {
  type    = list(string)
  default = ["shath2", "raed2", "abeer1"]
}

module "myusers" { 
#  source = "./modules/mod_users" 
  inp_username = var.username
  }
