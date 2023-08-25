
resource "aws_instance" "web" {
  ami           = "ami-03f38e546e3dc59e1"
  instance_type = "t2.micro"

 tags = {
   Name = "HelloWorld-TF"
 }
}


