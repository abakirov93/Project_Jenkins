module "jenkins" {
  source = "./module"

region                   = "${var.region}"
region_name              = "${var.region_name}"


image_value              = "${var.image_value}"
owner_name               = "${var.owner_name}"
user                     = "${var.user}"
host                     = "aws_instance.jenkins_server.public_ip"

az1                      = "${var.az1}"
az2                      = "${var.az2}"
az3                      = "${var.az3}"  


vpc_cidr                 = "${var.vpc_cidr}"

tags                     = "${var.tags}"

priv_subnet_cidr1        = "${var.priv_subnet_cidr1}"
priv_subnet_cidr2        = "${var.priv_subnet_cidr2}"
priv_subnet_cidr3        = "${var.priv_subnet_cidr3}"


pub_subnet_cidr1        = "${var.pub_subnet_cidr1}"
pub_subnet_cidr2        = "${var.pub_subnet_cidr2}"
pub_subnet_cidr3        = "${var.pub_subnet_cidr3}"


nat_cidr_block          = "${var.nat_cidr_block}"
ig_cidr_block           = "${var.ig_cidr_block}"


instance_type           = "${var.instance_type}" 
key_name                = "${var.key_name}"

ingress_cidr_blocks     = "${var.ingress_cidr_blocks}"

java_version            = "${var.java_version}"
jenkins_version         = "${var.jenkins_version}"



  
}

# module "jenkins-ohio" {
#   source = "./module"
#   region = "us-east-2"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }

# # module "jenkins-california" {              # us-west-1 only has 2 AZs
# #   source = "./module"
# #   region = "us-west-1"               
# # }

# module "jenkins-oregon" {
#   source = "./module"
#   region = "us-west-2"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }

# # module "jenkins-cape-town" {          # doesn't accept 137112412989 ami
# #   source = "./module"
# #   region = "af-south-1"
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# # module "jenkins-hong-kong" {          # doesn't accept 137112412989 ami
# #   source = "./module"
# #   region = "ap-east-1"
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# module "jenkins-mumbai" {
#   source = "./module"
#   region = "ap-south-1"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }


# module "jenkins-seoul" {
#   source = "./module"
#   region = "ap-northeast-2"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }


# module "jenkins-singapore" {
#   source = "./module"
#   region = "ap-southeast-1"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }


# module "jenkins-sydney" {
#   source = "./module"
#   region = "ap-southeast-2"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }


# # module "jenkins-tokyo" {
# #   source = "./module"
# #   region = "ap-northeast-1"            # Tokyo has 3 AZs but the order is a, c, d
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# # module "jenkins-canada" { 
# #   source = "./module"
# #   region = "ca-central-1"             # Canada has 3 AZs but the order is a, b, d
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# module "jenkins-frankfurt" {
#   source = "./module"
#   region = "eu-central-1"
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# }


# module "jenkins-ireland" {
#   source = "./module"
#   region = "eu-west-1"
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# }


# module "jenkins-london" {
#   source = "./module"
#   region = "eu-west-2"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }


# # module "jenkins-milan" {               # doesn't accept 137112412989 ami
# #   source = "./module"
# #   region = "eu-south-1"
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# # module "jenkins-paris" {
# #   source = "./module"
# #   region = "eu-west-3"         # requested configuration is currently not supported
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# # module "jenkins-stockholm" {
# #   source = "./module"
# #   region = "eu-north-1"        # requested configuration is currently not supported
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# # module "jenkins-bahrain" {           # doesn't accept 137112412989 ami
# #   source = "./module"
# #   region = "me-south-1"
#     image_owner = "137112412989"
#     desired_capacity = 1 
#     max_size = 1
#     min_size = 1 
# # }


# module "jenkins-sao-paulo" {
#   source = "./module"
#   region = "sa-east-1"
#   image_owner = "137112412989"
#   desired_capacity = 1 
#   max_size = 1
#   min_size = 1 
# }

