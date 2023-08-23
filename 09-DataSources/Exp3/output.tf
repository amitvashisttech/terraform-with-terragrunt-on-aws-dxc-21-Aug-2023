output "public_ips" {
  value       = aws_instance.front.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "public_dns" {
  value       = aws_instance.front.*.public_dns
  description = "Display the Public DNS of EC2 Instance"
}


output "az_east" {
  value = data.aws_availability_zones.zone_east.names
}

output "az_west" {
  value = data.aws_availability_zones.zone_west.names
}
