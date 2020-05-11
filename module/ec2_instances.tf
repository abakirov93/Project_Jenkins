data "aws_ami" "amazon" {
  most_recent = true
  owners      = ["${var.owner_name}"]

  filter {
    name   = "name"
    values = ["${var.image_value}"]
  }
}

resource "aws_instance" "jenkins_server" {
  ami                         = "${data.aws_ami.amazon.id}"
  instance_type               = "${var.instance_type}"
  availability_zone           = "${var.region}${var.az1}"
  vpc_security_group_ids      = ["${aws_security_group.jenkins_sg.id}"]
  subnet_id                   = "${aws_subnet.public_subnet_cidr1.id}"
  key_name                    = "${aws_key_pair.us_east_2_jenkins_key.key_name}"
  associate_public_ip_address = "true"

tags = "${merge(var.tags, map("Name","jenkins_server"))}" 
}
