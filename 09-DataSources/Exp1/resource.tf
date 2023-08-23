resource "aws_instance" "front" {
  count             = var.ec2_instance_count
  availability_zone = var.ec2_instance_zones[count.index]
  # ami               = var.ec2_instance_ami
  ami               = data.aws_ami.myami.id
  instance_type     = var.ec2_instance_type

  tags = {
    Name = local.frontend
  }
}


