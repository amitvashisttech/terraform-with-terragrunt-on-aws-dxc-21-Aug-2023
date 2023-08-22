resource "aws_instance" "web_east" {
  count             = var.ec2_instance_count
  availability_zone = var.ec2_instance_zones[count.index]
  ami               = var.ec2_instance_ami
  instance_type     = var.ec2_instance_type

  tags = {
    Name = "${var.ec2_instance_name}-${count.index}"
    Team = var.my_var
  }
}


