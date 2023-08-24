resource "aws_instance" "front" {
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]
  ami               = data.aws_ami.myami_east.id

  count             = var.ec2_instance_count
  instance_type     = var.ec2_instance_type

  tags = {
    Name = local.frontend
  }
}

resource "aws_instance" "front_west" {
  provider = aws.myprovider2
  ami               = data.aws_ami.myami_west.id
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]

  count             = var.ec2_instance_count
  instance_type     = var.ec2_instance_type

  tags = {
    Name = local.frontend
  }
}

