## Step-01: Introduction
#- Create 9 aws resources in a step by step manner
#- Create Terraform Block
#- Create Provider Block
#- Create 9 Resource Blocks
#  - Create VPC
resource "aws_vpc" "vpc-dev" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "vpc-dev"
  }

}

#  - Create Subnet
resource "aws_subnet" "vpc-dev-public-subnet-1" {
  vpc_id                  = aws_vpc.vpc-dev.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "terraform-created-subnet"
  }
}

#  - Create Internet Gateway
resource "aws_internet_gateway" "vpc-dev-igw" {
  vpc_id = aws_vpc.vpc-dev.id
}

#  - Create Route Table
resource "aws_route_table" "vpc-dev-public-route-table" {
  vpc_id = aws_vpc.vpc-dev.id
}

#  - Create Route in Route Table for Internet Access
resource "aws_route" "vpc-dev-public-route" {
  route_table_id         = aws_route_table.vpc-dev-public-route-table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.vpc-dev-igw.id
}

#  - Associate Route Table with Subnet
resource "aws_route_table_association" "vpc-dev-public-route-table-associate" {
  subnet_id      = aws_subnet.vpc-dev-public-subnet-1.id
  route_table_id = aws_route_table.vpc-dev-public-route-table.id
}
#  - Create Security Group in the VPC with port 80, 22 as inbound open
resource "aws_security_group" "dev-vpc-sg" {
  name        = "dev-vpc-default-sg"
  description = "Dev VPC Default Security Group"
  vpc_id      = aws_vpc.vpc-dev.id

  ingress {
    description = "Allow port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all IP and ports outbond"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "terraform_created_sg"
  }
}


#  - Create EC2 Instance in respective new vpc, new subnet created above with a static key pair, associate Security group created earlier
#  - Create Elastic IP Address and Associate to EC2 Instance
#  - Use `depends_on` Resource Meta-Argument attribute when creating Elastic IP  
  