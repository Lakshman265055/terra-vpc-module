variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "vpc-Cidr-range" {
    type = string
    # default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {}
}

variable "enable_dns_hostnames" {
    default = true
}

variable "vpc_tags" {
  default = {}
}

variable "igw_tags" {
    default = {}
}

variable "pub_cidr" {
    type = list(string)
    validation {
        condition = length(var.pub_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "priv_cidr" {
    type = list(string)
    validation {
        condition = length(var.priv_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}


variable "database_cidr" {
    type = list(string)
    validation {
        condition = length(var.database_cidr) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}


variable "public_subnet_tags" {
  default = {}
}


variable "private_subnet_tags" {
  default = {}
}


variable "database_subnet_tags" {
  default = {}
}

variable "aws_db_subnet_group_tags" {
  default = {}
}

variable "natgateway_tags" {
    default = {}
  
}