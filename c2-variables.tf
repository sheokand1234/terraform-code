# Input Variables
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = ""
}

variable "instance_type" {
  description = "EC2 Instance Type - Instance Sizing"
  type = string
  default = ""
  #default = "t2.small"
}
