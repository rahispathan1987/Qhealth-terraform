output "Public_IP" {
	value = "${module.ec2_instance.public_ip}"
}