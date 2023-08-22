resource "aws_instance" "web_east" {
  ami           = "ami-0ccabb5f82d4c9af5"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


resource "aws_instance" "web_west" {
  provider      = aws.myprovider2 
  # ami           = "ami-0ccabb5f82d4c9af5"
  ami           = "ami-04e35eeae7a7c5883"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
