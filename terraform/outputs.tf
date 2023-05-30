output "lb_public_ip" {
  description = "Public LB IP "
  value       = aws_instance.Lb-jenkins.public_ip
}

output "sql_private_ip" {
  description = "Private Jenkins IP "
  value = aws_instance.Sql-server.private_ip
}

output "webapp1_private_ip" {
  description = "Private WebApp IP "
  value = aws_instance.WebApp1.private_ip
}

output "webapp2_private_ip" {
  description = "Private WebApp IP "
  value = aws_instance.WebApp2.private_ip
}