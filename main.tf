#VPC Module
module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = "${var.projectname}_${var.environment}_vpc"
  cidr               = var.vpc_cidr
  azs                = var.vpc_azs
  private_subnets    = var.private_subnets
  public_subnets     = var.public_subnets
  enable_nat_gateway = var.nat_gateway
  single_nat_gateway = var.single_nat_gateway
  tags               = var.tags
}

#EC2 instance Module
module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 3.0"
  name                   = "${var.projectname}_${var.environment}_ec2"
  vpc_security_group_ids = [module.security_group.ec2_security_group]
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.ec2_key_pair_name
  monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  user_data              = <<EOF
#!/bin/bash
sudo apt update -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt update -y
sudo apt install ansible -y
git clone https://github.com/rahispathan1987/Qhealth-Ansible.git
cd Qhealth-Ansible
sudo ansible-playbook Qhealth-playbook.yaml
EOF
}

module "security_group" {
  source      = "./security_group"
  depends_on  = [module.vpc]
  environment = var.environment
  projectname = var.projectname
  vpc_id      = module.vpc.vpc_id
  allowed_ssh_ips = var.allowed_ssh_ips
}

