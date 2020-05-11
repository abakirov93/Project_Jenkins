output "region" {
  value = "           ${var.region}"
}
output "region_name" {
  value = "      ${var.region_name}"
}

# Output for Instance
output "owner_name" {
  value = "     ${var.owner_name}"
}
output "image_value" {
  value = "    ${var.image_value}"
}

output "instance_type" {
  value = "  ${aws_instance.jenkins_server.instance_type}"
}

output "java_version" {
  value = "   ${var.java_version}"
}

output "jenkins_version" {
  value = "${var.jenkins_version}"
}

output "host" {
  value = "           http://${aws_instance.jenkins_server.public_ip}:8080"
}



# Outputs for VPC
output "vpc_cidr" {
  value = " ${var.vpc_cidr}"
}
output "vpc_id" {
  value = "   ${aws_internet_gateway.gw.vpc_id}"
}


output "public_sub1" {
  value = "      ${aws_subnet.public_subnet_cidr1.id}         ${aws_subnet.public_subnet_cidr1.cidr_block}         ${aws_subnet.public_subnet_cidr1.availability_zone}",
}
output "public_sub2" {
  value = "      ${aws_subnet.public_subnet_cidr2.id}         ${aws_subnet.public_subnet_cidr2.cidr_block}         ${aws_subnet.public_subnet_cidr2.availability_zone}",
}
output "public_sub3" {
  value = "      ${aws_subnet.public_subnet_cidr3.id}         ${aws_subnet.public_subnet_cidr3.cidr_block}         ${aws_subnet.public_subnet_cidr3.availability_zone}",
}


output "private_sub1" {
  value = "     ${aws_subnet.private_subnet_cidr1.id}         ${aws_subnet.private_subnet_cidr1.cidr_block}        ${aws_subnet.private_subnet_cidr1.availability_zone}",
}
output "private_sub2" {
  value = "     ${aws_subnet.private_subnet_cidr2.id}         ${aws_subnet.private_subnet_cidr2.cidr_block}        ${aws_subnet.private_subnet_cidr2.availability_zone}",
}
output "private_sub3" {
  value = "     ${aws_subnet.private_subnet_cidr3.id}         ${aws_subnet.private_subnet_cidr3.cidr_block}        ${aws_subnet.private_subnet_cidr3.availability_zone}",
}

output "gateway_id" {
  value = "${var.ig_cidr_block}"
}

output "nat_gateway_id" {
  value = "${var.nat_cidr_block}"
}


output "tags" {
  value = "${var.tags}"
}