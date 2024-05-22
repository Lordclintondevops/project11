# Creating a Route Table

resource "aws_route_table" "rt1" {
    vpc_id = aws_vpc.demo1.id

    route {
        gateway_id = aws_internet_gateway.dem1igw.id
        cidr_block = var.cdrrt1
    }
  
}

# Creating an Route Table Associating for our Subnet A

resource "aws_route_table_association" "rta1" {
    route_table_id = aws_route_table.rt1.id
    subnet_id = aws_subnet.pubA.id
  
}

# Creating an Route Table Associating for our Subnet B

resource "aws_route_table_association" "rta2" {
    route_table_id = aws_route_table.rt1.id
    subnet_id = aws_subnet.pubB.id
  
}

# Creating an Route Table Associating for our Subnets

resource "aws_route_table_association" "rta3" {
    route_table_id = aws_route_table.rt1.id
    subnet_id = aws_subnet.pubC.id
  
}
