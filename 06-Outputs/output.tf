output "public_ips" {
  value       = aws_instance.web.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "public_dns" {
  value       = aws_instance.web.*.public_dns
  description = "Display the Public DNS of EC2 Instance"
}


output "public_ip_1" {
  value       = aws_instance.web[0].public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "public_ip_2" {
  value       = aws_instance.web[1].public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "public_dns_1" {
  value       = aws_instance.web[0].public_dns
  description = "Display the Public DNS of EC2 Instance"
}