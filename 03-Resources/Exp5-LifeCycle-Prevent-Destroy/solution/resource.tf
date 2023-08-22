provider "aws" {
    region = "us-east-2"
}


resource "aws_instance" "web" {
  count = 1

  # Amazon Linux Image ID
  ami           = "ami-0ccabb5f82d4c9af5"

  instance_type = "t2.micro"
  

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_instance" "db" {
  count = 1

  # Amazon Linux Image ID
  ami           = "ami-0ccabb5f82d4c9af5"

  instance_type = "t2.micro"

  lifecycle {
    prevent_destroy = "false"
  }
  

  tags = {
    Name = "HelloWorld"
  }
}


