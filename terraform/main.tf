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

resource "aws_s3_bucket" "dbdump" {
  bucket = "tf-mysql-bucket-forapp"

  tags = {
    Name        = "tf-mysql-bucket-forapp"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "s3dump" {
  bucket = aws_s3_bucket.dbdump.id
  for_each = fileset("./dumps/", "**")
  key = each.value
  source = "./dumps/${each.value}"
  etag = filemd5("./dumps/${each.value}")
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

#-----------------------------------------------------------
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
