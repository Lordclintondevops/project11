# Creating Our Public Subnet A 

resource "aws_subnet" "pubA" {
    vpc_id                  = aws_vpc.demo1.id
    cidr_block              = var.puba
    availability_zone       = "us-east-1a"
    map_public_ip_on_launch = true


  tags = {
    Name = var.pubA
  }
}

# Creating Our Public Subnet B 

resource "aws_subnet" "pubB" {
    vpc_id                  = aws_vpc.demo1.id
    cidr_block              = var.pubb
    availability_zone       = "us-east-1b"
    map_public_ip_on_launch = true


  tags = {
    Name = var.PubB
  }
}

# Creating Our Public Subnet C

resource "aws_subnet" "pubC" {
    vpc_id                  = aws_vpc.demo1.id
    cidr_block              = var.pubc
    availability_zone       = "us-east-1c"
    map_public_ip_on_launch = true


  tags = {
    Name = var.pubC
  }
}