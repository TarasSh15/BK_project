output "jenkins_public_ip" {
  description = "Public Jenkins IP "
  value       = aws_instance.Jenkins.public_ip
}

output "jenkins_private_ip" {
  description = "Private Jenkins IP "
  value = aws_instance.Jenkins.private_ip
}

output "lb_public_ip" {
  description = "Public LB IP "
  value       = aws_instance.lb.public_ip
}

output "lb_private_ip" {
  description = "Private LB IP "
  value = aws_instance.lb.private_ip
}

output "webapp_public_ip" {
  description = "Public WebApp IP "
  value       = aws_instance.WebApp.public_ip
}

output "webapp_private_ip" {
  description = "Private WebApp IP "
  value = aws_instance.WebApp.private_ip
}