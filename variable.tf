variable "vpc_name" {
  description = "Name of the VPC"
}
variable "public_subnet_2_cidr" {
  description = "CIDR block for the first public subnet"
}
variable "public_subnet_2_az" {
  description = "Availability zone for the first public subnet"         
}
variable "public_subnet_1_cidr" {
  description = "CIDR block for the second public subnet"
}
variable "public_subnet_1_az" {
  description = "Availability zone for the second public subnet"
} 

variable "private_subnet_1_cidr" {
  description = "CIDR block for the first private subnet"
}
variable "private_subnet_1_az" {
  description = "Availability zone for the first private subnet"
}