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

resource "aws_instance" "Lb-jenkins" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-0da045203b980776d"]
  tags = {
    Name = "lb-jenkins"
  }
}

resource "aws_instance" "Sql-server" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-09ca1f8b5838a24fe"]
  tags = {
    Name = "Sql-server"
  }
}

resource "aws_instance" "WebApp1" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-0d94338c1696a6cc0"]
  tags = {
    Name = "WebApp1"
  }
}

resource "aws_instance" "WebApp2" {
  ami                      = "ami-0ec7f9846da6b0f61"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = ["sg-0d94338c1696a6cc0"]
  tags = {
    Name = "WebApp2"
  }
}