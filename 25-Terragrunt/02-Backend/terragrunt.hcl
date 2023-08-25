remote_state {
  backend = "s3"
  
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }


  config = {
    key     = "${path_relative_to_include()}/terrafrom.tfstate"
    bucket = "my-s3-bucket-jb1-z25c4q3uxs"
    region = "us-east-2"
  }
}


