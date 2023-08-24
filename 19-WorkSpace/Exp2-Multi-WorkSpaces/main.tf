provider "aws" {
  region = "us-east-2"
  #access_key = "XXXX"
  #secret_key = "YYYY"
}


resource "aws_instance" "web" {
  ami           = "ami-0ccabb5f82d4c9af5"
  instance_type = lookup(var.ec_instance_type, terraform.workspace)
  count = lookup(var.ec_instance_count, terraform.workspace)

  tags = {
    Name = local.name
  }
}

locals {
   name = join("-", (["EC2-Instance", terraform.workspace]))
}


