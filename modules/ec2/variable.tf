variable "sg_id" {
    description = "SG ID for EC2"
    type = string
  
}
variable "b_subnets" {
    description = "Subnets for EC2"
    type = list(string)
}
variable "ec2_names" {
    description = "EC2 names"
    type = list(string)
    default = [ "webserver1", "webserver2" ]
}