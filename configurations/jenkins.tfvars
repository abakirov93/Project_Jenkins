# Values
environment       = "dev" 
s3_bucket         = "jenkins-nataliya-dev" #Will be used to set backend.tf 
s3_folder_project = "vet" #Will be used to set backend.tf 
s3_folder_region  = "us-east-2" #Will be used to set backend.tf 
s3_folder_type    = "sharedtools" #Will be used to set backend.tf 
s3_tfstate_file   = "jenkins.tfstate" #Will be used to set backend.tf 



region                   = "us-east-2"
region_name              = "ohio"


vpc_cidr                 = "192.168.0.0/16"

# private and public subnets cidr blocks
pub_subnet_cidr1         = "192.168.1.0/24"
pub_subnet_cidr2         = "192.168.2.0/24"
pub_subnet_cidr3         = "192.168.3.0/24"

priv_subnet_cidr1        = "192.168.11.0/24"
priv_subnet_cidr2        = "192.168.12.0/24"
priv_subnet_cidr3        = "192.168.13.0/24"


# availability zones for subnets
az1                      = "a"
az2                      = "b"
az3                      = "c"

# IG and NAT routes
nat_cidr_block           = "0.0.0.0/0"
ig_cidr_block            = "0.0.0.0/0"

# ec2 instances
image_value              = "amzn2-ami-hvm-2.0.20200406.0-x86_64-ebs*"
owner_name               = "amazon"
instance_type            = "t2.medium"
key_name                 = "nataliyas_jenkins_project_tf"


# null_resource.tf


user                     = "ec2-user"
host                     = "${aws_instance.jenkins_server.public_ip}"
java_version             = "-1.8.0-openjdk-devel"
jenkins_version          = "jenkins"

# security group
ingress_cidr_blocks      = ["0.0.0.0/0"]
egress_cidr_blocks       = ["0.0.0.0/0"]

# tags
tags = {
    Environment          = "Dev"
    Department           = "IT"
    Team                 = "Infrastructure"
    Created_by           = "Nataliya Andrukhiv"
}


