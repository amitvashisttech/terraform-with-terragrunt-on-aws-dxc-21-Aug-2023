// Region 1 - US East 2 

// Frontend Instance Configuration 
resource "aws_instance" "front_east" {

  // One Instance Per Availability Zone based on instance count 
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]
  ami               = data.aws_ami.myami_east.id

  count         = var.ec2_instance_count
  instance_type = var.ec2_instance_type

  // Frontend Instance Depends On Backend Instances
  depends_on = [aws_instance.back_east]

  // Lifecycle to prevent downtime during updates
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = local.frontend_east
  }
}



// Backend Instance Configuration 
resource "aws_instance" "back_east" {

  // One Instance Per Availability Zone based on instance count 
  availability_zone = data.aws_availability_zones.zone_east.names[count.index]
  ami               = data.aws_ami.myami_east.id

  count         = var.ec2_instance_count
  instance_type = var.ec2_instance_type

  // Lifecycle to prevent destroy by mistake
  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = local.backend_east
  }
}






// Region 2 - US West 2 

// Frontend Instance Configuration 
resource "aws_instance" "front_west" {

  // Configure MyProvider2 to target 2nd Region. 
  provider = aws.myprovider2
  ami      = data.aws_ami.myami_west.id

  // One Instance Per Availability Zone based on instance count 
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]

  count         = var.ec2_instance_count
  instance_type = var.ec2_instance_type

  // Frontend Instance Depends On Backend Instances
  depends_on = [aws_instance.back_west]

  // Lifecycle to prevent downtime during updates
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = local.frontend_west
  }
}

// Backend Instance Configuration 
resource "aws_instance" "back_west" {

  // Configure MyProvider2 to target 2nd Region. 
  provider = aws.myprovider2

  // One Instance Per Availability Zone based on instance count 
  availability_zone = data.aws_availability_zones.zone_west.names[count.index]
  ami               = data.aws_ami.myami_west.id

  count         = var.ec2_instance_count
  instance_type = var.ec2_instance_type

  // Lifecycle to prevent destroy by mistake
  lifecycle {
    prevent_destroy = false
  }

  tags = {
    Name = local.backend_west
  }
}