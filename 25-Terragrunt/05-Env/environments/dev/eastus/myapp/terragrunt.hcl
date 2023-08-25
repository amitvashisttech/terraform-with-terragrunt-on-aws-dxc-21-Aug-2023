include {
  path = find_in_parent_folders()
}

terraform {
  source = "${get_parent_terragrunt_dir()}/modules//ec2"
}

inputs = { 
  ec2_instance_count = 2 
}