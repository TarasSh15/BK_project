output "jenkins_public_ip" {
  description = "Public Jenkins server IP "
  value       = aws_instance.Jenkins.public_ip
}

output "jenkins_private_ip" {
  description = "Private Jenkins server IP "
  value = aws_instance.Jenkins.private_ip
}

output "apache_public_ip" {
  description = "Public Apache server IP "
  value       = aws_instance.Apache.public_ip
}

output "apache_private_ip" {
  description = "Private Apache server IP "
  value = aws_instance.Apache.private_ip
}