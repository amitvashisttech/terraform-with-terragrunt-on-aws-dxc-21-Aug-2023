variable "ec2_instance_zones" {
  type        = list(any)
  default     = ["us-east-2a", "us-east-2b"]
  description = "Zone Variable for EC2 Instance Placement"
}

variable "ec2_instance_ami" {
  type        = string
  description = "Variable for EC2 Instance Image"
  default     = "ami-0ccabb5f82d4c9af5"
}

variable "ec2_instance_type" {
  description = "Variable for EC2 Instance Type"
  default     = "t2.micro"
  type        = string
}

variable "ec2_instance_count" {
  description = "Variable for EC2 Instance Count"
  default     = 2
  type        = number
}

variable "ec2_instance_name" {
  description = "Variable for EC2 Instance Name Tag"
  default     = "Test-VM"
  type        = string
}


variable "my_var" {
  default = "test1"
}