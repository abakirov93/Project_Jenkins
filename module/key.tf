resource "aws_key_pair" "us_east_2_jenkins_key" {
  key_name   = "${var.key_name}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
