# Creating Our EC2 instances A

resource "aws_instance" "ec2A" {
    ami = var.ec2ami
    instance_type = var.type
    key_name = var.key_name
    subnet_id = aws_subnet.pubA.id
    vpc_security_group_ids = [aws_security_group.demosg.id]

    tags = {
      Name = "ec2A"
    }
  
}

# Creating Our EC2 instances B

resource "aws_instance" "ec2B" {
    ami = var.ec2ami
    instance_type = var.type
    key_name = var.key_name
    subnet_id = aws_subnet.pubB.id
    vpc_security_group_ids = [aws_security_group.demosg.id]

    tags = {
      Name = "ec2B"
    }
  
}

# Creating Our EC2 instances C

resource "aws_instance" "ec2C" {
    ami = var.ec2ami
    instance_type = var.type
    key_name = var.key_name
    subnet_id = aws_subnet.pubC.id
    vpc_security_group_ids = [aws_security_group.demosg.id]

    tags = {
      Name = "ec2C"
    }
  
}

# Create an golden AMI from ec2A

resource "aws_ami_from_instance" "ec2A-ami" {
    name = "ec2A-ami"
    source_instance_id = aws_instance.ec2A.id

    tags = {
      Name = "ec2-ami"
    }
   
  
}