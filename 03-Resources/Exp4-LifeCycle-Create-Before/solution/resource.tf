provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "web" {
  count = 1

  # Amazon Linux Image ID
  # ami           = "ami-0ccabb5f82d4c9af5"

  # Ubuntu Linux 22.04 Image ID
  ami = "ami-024e6efaf93d85776"
  #instance_type = "t2.micro"
  instance_type = "t2.medium"

  lifecycle {
    create_before_destroy = "true"
  }

  tags = {
    Name = "HelloWorld"
  }
}


