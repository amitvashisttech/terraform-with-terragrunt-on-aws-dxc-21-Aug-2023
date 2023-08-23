output "public_ips" {
  value       = aws_instance.front.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "public_dns" {
  value       = aws_instance.front.*.public_dns
  description = "Display the Public DNS of EC2 Instance"
}

