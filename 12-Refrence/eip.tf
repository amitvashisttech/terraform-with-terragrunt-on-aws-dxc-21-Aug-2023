resource "aws_eip" "myeip" {
  domain = "vpc"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.front[0].id
  allocation_id = aws_eip.myeip.id
}