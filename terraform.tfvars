projectname = "qhealth"
environment = "dev"

vpc_cidr = "10.1.0.0/20"

vpc_azs         = ["us-east-1a", "us-east-1b", "us-east-1c"]
private_subnets = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
public_subnets  = ["10.1.4.0/24", "10.1.5.0/24", "10.1.6.0/24"]

nat_gateway        = false
single_nat_gateway = false

instance_type = "t3.micro"

tags = {
  Terraform   = "true"
  Environment = "test"
}


