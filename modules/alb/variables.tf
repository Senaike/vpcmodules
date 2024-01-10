variable "sg_id"{
    description = "SG ID for Application load balancer"
    type = string
}

variable "subnets" {
    description = "SUBNETS for application load balancer"
    type = list(string)
  
}