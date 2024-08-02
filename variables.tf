variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "ami_filter" {
  description = "filter owner"
  type = object ({
    name = string
    owner = string
  })

  default = {
    name   = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owners = "979382823631"
  }
}

variable "environment" {
  description = " dev env"

  type = object ({
     name =  string
     network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "min"size" {
  default = 1
}

variable "max"size" {
  default = 2
}