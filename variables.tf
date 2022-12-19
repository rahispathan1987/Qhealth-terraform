variable "projectname" {
  type        = string
  description = "Name of the project"
}

variable "environment" {
  type        = string
  description = "Name of the environment"
}


variable "vpc_cidr" {
  type        = string
  description = "CIDR block of the vpc"
}

variable "vpc_azs" {
  type        = list(string)
  description = "List of availability zones"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets"
}

variable "nat_gateway" {
  type        = bool
  description = "Required NAT Gateway or not"
}

variable "single_nat_gateway" {
  type        = bool
  description = "Required single NAT Gateway or multiple NAT Gateway"
}

variable "tags" {
  type        = map(string)
  description = "Tags on VPC"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "allowed_ssh_ips" {
  type        = string
  description = "Please Enter IP for whitelist SSH Port Example, 1.1.1.1/32"
}

variable "ec2_key_pair_name" {
  type        = string
  description = "Enter ec2 instance key pair name that was created in step 1"
}

