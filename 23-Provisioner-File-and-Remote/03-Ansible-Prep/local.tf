resource "random_string" "test" {
  length = 3
  lower  = true
  upper  = false
  special = false
}

locals {
  key_pair_name = join("-", tolist(["ssh-keypair-25-Aug-2023", random_string.test.id ]))
  sg_name       = join("-", tolist(["sec-group-25-Aug-2023", random_string.test.id ]))
}



locals { 
    frontend = join("-", tolist([ var.project-name, "Ec2"]))
}
