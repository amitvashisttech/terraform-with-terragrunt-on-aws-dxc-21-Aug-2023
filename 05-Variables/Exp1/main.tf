variable "zones" {
  type        = list(any)
  default     = ["us-east-2a", "us-east-2b"]
  description = "Zone Variable for EC2 Instance Placement"
}




resource "aws_instance" "web_east" {
  count             = 2
  availability_zone = var.zones[count.index]
  ami               = "ami-0ccabb5f82d4c9af5"
  instance_type     = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}


