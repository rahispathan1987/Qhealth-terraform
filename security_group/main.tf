resource "aws_security_group" "ec2_sg" {
  name        = "${var.projectname}_${var.environment}_ec2_sg"
  description = "Allow HTTP and HTTPS inbound traffic"
  vpc_id      = var.vpc_id
  ingress = [
    {
      description      = "HTTP from internet"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "Allow HTTP Access On Port 80"
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = false      
    },
    {
      description      = "HTTPS from internet"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "Allow HTTP Access On Port 443"
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = false      
    },
    {
      description      = "SSH from resticted IPS"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = [var.allowed_ssh_ips]
      description      = "Allow SSH Access On Port 22"
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = false      
    }    
  ]
  egress = [
    {
      description      = "Allow all outbound traffic"      
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = []
      security_groups = []
      self = false      
    }
  ]
  tags = {
    Name = "${var.projectname}_${var.environment}_ALB_SG"
  }
}