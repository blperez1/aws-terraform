variable "region" {
    type = string
    default = "us-east-1"
}

variable "access" {
    type = string
}

variable "secret" {
    type = string
}

variable "userid" {
    type = number
}

variable "elb_name" {
    type = string
}

variable "az" {
    type = list
}

variable "timeout" {
    type = number
}