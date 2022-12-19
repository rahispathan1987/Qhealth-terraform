# # Project Quadrant Health

Project Description:

As per mentioned just run one trigger to implement the whole solution.

We have Configured Terraform to deploy infrastructure and Ansible for the configuration management implementation.

# Prerequisites

Install Terraform with mentioned command in local system.

sudo apt update
sudo apt install  software-properties-common gnupg2 curl
curl https://apt.releases.hashicorp.com/gpg | gpg --dearmor > hashicorp.gpg
           sudo install -o root -g root -m 644 hashicorp.gpg /etc/apt/trusted.gpg.d/
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com focal main"
sudo apt update
sudo apt install terraform


# Install AWS-CLI in local system.

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


# Repository:

Note:There are configured 3 diffrent repo for the Terraform,Ansible and Code.

1.https://github.com/rahispathan1987/Qhealth-terraform.git
2.https://github.com/rahispathan1987/Qhealth-Ansible.git
3.https://github.com/rahispathan1987/Qhealth-API.git

Download all the repo in local system.


# Configure Profile to run AWS on CLI.

AWS Configure
Give profile name in provider.tf files in terraform directory.
and after login with AWS profile run Terrform provision.Mentioned command to run terraform.

Terraform init
Terraform validate
Terraform plan
Terraform apply

# How to Install and Run the Project:

1.Install Terraform in local system or Laptop.
2.Configure Ec2-instace Key pairs in AWS console in region us-east-2.
3.Configure and Mention Key pairs name in Terraform var.tf files.
4.Configure access_key and secret_key in Qhealth-Terraform file in Provider section.
5.Check all Terraform code with Terraform validate
6.Next Terraform apply.

# Check and Browse URL:

Terraform apply will print IP in the last section copy this IP and Browse URL with IP.
