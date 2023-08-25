resource "aws_instance" "front" {
  #count             = var.ec2_instance_count
  ami               = data.aws_ami.myami.id
  instance_type     = var.ec2_instance_type
  key_name          = aws_key_pair.example_ssh_keypair.key_name
  vpc_security_group_ids = [ aws_security_group.allow_ssh.id ]
   
  tags = {
    Name = local.frontend
  }

 // File & Remote Provisioner Demo. 

 
// 1. SSH Conection Def. 
  connection { 
     type = "ssh"
     user = "ec2-user"
     #private_key = file(var.pvt_key)
     #private_key = file(.terrafrom/.ssh/admin_rsa)
     private_key = tls_private_key.example_ssh.private_key_pem
     host        = self.public_ip
  }

  // 2. File Provisioner to copy my script from local to remote machine. 
  provisioner "file" { 
     source = "./script"
     destination = "/home/ec2-user/"
  }


// 3. Remote Provisioner - Change the file permission & excute the scripts on the remote machine. 
  provisioner "remote-exec" {
    inline = [
       "sudo chmod +x ~/script/run_frontend.sh",
       "sudo   ~/script/run_frontend.sh",
    ]  
  }


}



// Ansible Integration with Terraform by Using the Null_Resource with local Provisioner

resource "null_resource" "ansble-deployment" {

  // 4. It will run the ansible playbook 
  provisioner "local-exec" {
    command = "ansible-playbook -i '${aws_instance.front.public_ip},' ./ansible/playbook.yaml  --key-file='${path.root}/.terraform/.ssh/admin_rsa' -u ec2-user -v"
  }

  depends_on = [aws_instance.front]


  triggers = {
    always_run = timestamp()
  }
}