output "public_ips" {
  value       = aws_instance.front.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "public_dns" {
  value       = aws_instance.front.*.public_dns
  description = "Display the Public DNS of EC2 Instance"
}

output "myami_datasource_detials" {
  value = data.aws_ami.myami_east
}

output "myami_datasource_image_id" {
  value = data.aws_ami.myami_east.id
}

output "az_datasource_detials" {
  value = data.aws_availability_zones.zone_east
}
