variable "ec_instance_count" {
  type        = map
  description = "Ec2 Instance Count Based on WorkSpaces as Key"
  default = {
    default = 1 
    dev = 2
    prod = 3
    dxc = 5 
  }
}

variable "ec_instance_type" {
  type        = map
  description = "Ec2 Instance Type Based on WorkSpaces as Key"
  default = {
    default = "t2.nano"
    dev = "t2.micro"
    prod = "t2.medium"
    dxc = "t2.nano"
  }
}