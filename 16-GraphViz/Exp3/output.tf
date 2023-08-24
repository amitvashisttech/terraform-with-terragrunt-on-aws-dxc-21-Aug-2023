// Output of Frontend & Backend IP Address of Region1.

output "Frontend_Public_ips_Rg1" {
  value       = aws_instance.front_east.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "Backend_Public_ips_Rg1" {
  value       = aws_instance.back_east.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}


output "Frontend_Public_ips_Rg2" {
  depends_on  = [ aws_instance.front_west ] 
  value       = aws_instance.front_west.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}

output "Backend_Public_ips_Rg2" {
  depends_on  = [ aws_instance.back_west ] 
  value       = aws_instance.back_west.*.public_ip
  description = "Display the Public IP of EC2 Instance"
}
