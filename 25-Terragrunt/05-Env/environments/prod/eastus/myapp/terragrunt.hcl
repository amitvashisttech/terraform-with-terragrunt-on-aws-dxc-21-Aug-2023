include {
  path = find_in_parent_folders()
}

terraform {
  #source = "${get_parent_terragrunt_dir()}/modules//ec2"
  #source = "github.com:amitvashisttech/infra-code-repo.git//app?ref=v0.0.1"
  source = "github.com:amitvashisttech/infra-code-repo.git//app?ref=v0.0.2"
}
