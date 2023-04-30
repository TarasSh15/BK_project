# resource "aws_vpc" "prod-vpc" {
#     cidr_block = "192.168.1.0/24"
#     enable_dns_support = "true"
#     enable_dns_hostnames = "true"

#     tags = {
#         Name = "prod-vpc"
#     }
# }

# resource "aws_subnet" "prod-subnet-private-1" {
#     vpc_id = "${aws_vpc.prod-vpc.id}"
#     cidr_block = "192.168.1.128/28"
#     map_public_ip_on_launch = "true" # This is what makes it a public subnet
#     availability_zone = "eu-central-1a"
#     tags = {
#         Name = "prod-subnet-public-1"
#     }
# }

# resource "aws_subnet" "prod-subnet-private-2" {
#     vpc_id = "${aws_vpc.prod-vpc.id}"
#     cidr_block = "192.168.1.144/28"
#     availability_zone = "eu-central-1b"
#     tags = {
#         Name = "prod-subnet-private-1"
#     }
# }
