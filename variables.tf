#  Region
variable "region" {
    type = string
    default = "us-east-1"
  
}

# VPC cidr_block
variable "vpc" {
    type = string
    default = "125.135.0.0/16"
  
}

# VPC instance_tenancy
variable "tenancy" {
    type = string
    default = "default"
  
}

# Tags for VPC
variable "name" {
    type = string
    default = "Demo1"
  
}

# Tags for IGW
variable "dem1igw" {
    type = string
    default = "Dem1igw"
  
}

# Cidr for PubA Subnet
variable "puba" {
    type = string
    default = "125.135.0.0/24"
  
}

# Tags for Pub A
variable "pubA" {
    type = string
    default = "PubA"
  
}

# Cidr for PubB Subnet
variable "pubb" {
    type = string
    default = "125.135.1.0/24"
  
}

# Tags for PubB
variable "PubB" {
    type = string
    default = "PubB"
  
}

# Cidr for PubC Subnet
variable "pubc" {
    type = string
    default = "125.135.2.0/24"
  
}

# Tags for Pubc
variable "pubC" {
    type = string
    default = "PubC"
  
}

# Cidr_block for our Route Table
variable "cdrrt1" {
    type = string
    default = "0.0.0.0/0"
  
}

# AMI 
variable "ec2ami" {
    type = string
    default = "ami-04b70fa74e45c3917"
  
}

# instance type
variable "type" {
    type = string
    default = "t2.micro"
  
}

# Keyname
variable "key_name" {
    type = string
    default = "clintontest"
  
}

