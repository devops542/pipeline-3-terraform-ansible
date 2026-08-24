output "instance_public_ip" {
  description = "Public IP address of the Terraform-Ansible server"
  value       = aws_instance.server.public_ip
}

output "instance_public_dns" {
  description = "Public DNS name of the Terraform-Ansible server"
  value       = aws_instance.server.public_dns
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.server.id
}

output "ssh_command" {
  description = "SSH command to connect to the server"
  value       = "ssh -i ../ansible/keys/Radhaswamy.pem ubuntu@${aws_instance.server.public_ip}"
}