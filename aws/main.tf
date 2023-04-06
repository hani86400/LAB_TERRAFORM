module "mykeys" {
  # path to the module's directory
  # the source argument is mandatory for all modules.
  source = "./modules/key_pair"

  # module inputs
  #ami_id = var.ami_id
  #instance_type = var.instance_type
  #servers = var.servers
}

module "myusers" { source = "./modules/users" }