# Creating our VPC

resource "aws_vpc" "demo1" {
    cidr_block       = var.vpc
    instance_tenancy = var.tenancy


    tags = {
      Name           = var.name
    }
  
}

# Creating and attaching an Internet Gateway to our VPC

resource "aws_internet_gateway" "dem1igw" {
    vpc_id            = aws_vpc.demo1.id

    
    tags = {
        Name = var.dem1igw
    } 

}