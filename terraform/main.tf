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

resource "aws_security_group" "LoadBalancer-SG" {
  name = "lb-sec-group"
  description = "Allow HTTP, SSH, 8080, 30000-30002 traffic via Terraform"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # ingress {
  #   from_port   = 3306
  #   to_port     = 3306
  #   protocol    = "tcp"
  #   cidr_blocks = ["0.0.0.0/0"]
  # }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 30000
    to_port     = 30002
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # ingress {
  #   from_port   = 0
  #   to_port     = 0
  #   protocol    = "-1"
  #   cidr_blocks = ["172.31.0.0/16"]
  # }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "SQL-SG" {
  name = "SQL-sec-group"
  description = "Allow SQL and SSH traffic via Terraform"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "WebApp-SG" {
  name = "web-sec-group"
  description = "Allow HTTP and SSH traffic via Terraform"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "Lb-jenkins" {
  ami                      = "ami-04e601abe3e1a910f"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = [aws_security_group.LoadBalancer-SG.id]
  tags = {
    Name = "Lb-jenkins"
  }
}

resource "aws_instance" "Sql-server" {
  ami                      = "ami-04e601abe3e1a910f"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = [aws_security_group.SQL-SG.id]
  tags = {
    Name = "Sql-server"
  }
}

resource "aws_instance" "WebApp1" {
  ami                      = "ami-04e601abe3e1a910f"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = [aws_security_group.WebApp-SG.id]
  tags = {
    Name = "WebApp1"
  }
}

resource "aws_instance" "WebApp2" {
  ami                      = "ami-04e601abe3e1a910f"
  instance_type            = "t2.micro"
  key_name                 = "aws_key"
  vpc_security_group_ids   = [aws_security_group.WebApp-SG.id]
  tags = {
    Name = "WebApp2"
  }
}