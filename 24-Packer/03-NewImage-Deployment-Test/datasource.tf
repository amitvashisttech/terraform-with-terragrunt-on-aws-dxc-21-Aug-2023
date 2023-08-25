data "aws_ami" "myami" {
  most_recent = true
  owners      = ["574907400788"]

  filter {
    name   = "name"
    values = ["apache-ami-packer-*"]
  }
}
