output "public_ip" {
    value = aws_instance.front.*.public_ip
    description = "Display the Public IP of EC2 Instance"
}

output "public_dns" {
    value = aws_instance.front.*.public_dns
    description = "Display the Public IP of EC2 Instance"
}

output "private_ip" {
    value = aws_instance.front.*.private_ip
    description = "Display the Private IP of EC2 Instance"
}

output "private_dns" {
    value = aws_instance.front.*.private_dns
    description = "Display the Private IP of EC2 Instance"
}
