output "jenkins_public_ip" {
  description = "Public Jenkins IP "
  value       = aws_instance.Jenkins-sql.public_ip
}

output "jenkins_private_ip" {
  description = "Private Jenkins IP "
  value = aws_instance.Jenkins-sql.private_ip
}

output "lb_public_ip" {
  description = "Public LB IP "
  value       = aws_instance.lb.public_ip
}

output "lb_private_ip" {
  description = "Private LB IP "
  value = aws_instance.lb.private_ip
}

output "webapp1_public_ip" {
  description = "Public WebApp IP "
  value       = aws_instance.WebApp1.public_ip
}

output "webapp1_private_ip" {
  description = "Private WebApp IP "
  value = aws_instance.WebApp1.private_ip
}

output "webapp2_public_ip" {
  description = "Public WebApp IP "
  value       = aws_instance.WebApp2.public_ip
}

output "webapp2_private_ip" {
  description = "Private WebApp IP "
  value = aws_instance.WebApp2.private_ip
}