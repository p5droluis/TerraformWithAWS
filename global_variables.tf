#EC2 Instance variable name
variable "ec2_name" {
  description = "EC2 instance name"
  type        = string
}
#VPC variable name
variable "vpc_name" {
  description = "VPC name"
  type        = string
}
#Subnet variable name
variable "subnet_name" {
  description = "Subnet name"
  type        = string
}
#Environment variable name
variable "env" {
  description = "Environment type"
  type        = string
}