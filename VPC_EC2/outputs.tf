output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = aws_subnet.subnet.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "public_route_table_id" {
  description = "The ID of the public Route Table"
  value       = aws_route_table.public.id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.default.id
}

output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.ec2.id
}

output "instance_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ec2.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the EC2 instance"
  value       = "ssh -i ${var.key_name}.pem ubuntu@${aws_instance.ec2.public_ip}"
}