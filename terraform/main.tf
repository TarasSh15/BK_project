terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-central-1"
}

resource "aws_instance" "lb" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-0da045203b980776d"]
  tags = {
    Name = "LoadBalancer"
  }
}

resource "aws_instance" "Jenkins" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-0da045203b980776d"]
  tags = {
    Name = "Jenkins"
  }
}

resource "aws_instance" "WebApp" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-0da045203b980776d"]
  tags = {
    Name = "WebApp"
  }
}

# resource "aws_instance" "Jenkins" {
#   ami                         = "ami-0c9354388bb36c088"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "mypersonalkey"
#   vpc_security_group_ids      = ["sg-01a682529a9cb3dc4"]
#   tags = {
#     Name = "Apache"
#   }
# }

# resource "aws_instance" "Project" {
#   ami                         = "ami-0c9354388bb36c088"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "mypersonalkey"
#   vpc_security_group_ids      = ["sg-01a682529a9cb3dc4"]
#   tags = {
#     Name = "Apache"
#   }
# }
# resource "aws_security_group" "web" {
#   name = "Jenkins-sg"
#   ingress {
#     from_port = 22
#     to_port = 22
#     protocol = "tcp"
#     cidr_blocks = [ "91.243.26.110/32" ]
#   }
# }
