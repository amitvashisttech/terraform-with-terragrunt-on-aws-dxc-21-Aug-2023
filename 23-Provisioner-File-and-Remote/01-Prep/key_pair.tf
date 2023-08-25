// Genrate a SSH Key Pair 
resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

// Save the genrate public key in a local machine
resource "local_file" "write_public_key" {
  content         = tls_private_key.example_ssh.public_key_openssh
  filename        = "${path.root}/.terraform/.ssh/admin_rsa.pub"
  file_permission = 0400
}


// Save the genrate private key in a local machine
resource "local_file" "write_private_key" {
  content         = tls_private_key.example_ssh.private_key_pem
  filename        = "${path.root}/.terraform/.ssh/admin_rsa"
  file_permission = 0400
}


// Upload our SSH public Key in AWS Portal
resource "aws_key_pair" "example_ssh_keypair" {
  key_name   = "example_ssh_keypair-av-25-Aug-2023"
  public_key = tls_private_key.example_ssh.public_key_openssh
} 