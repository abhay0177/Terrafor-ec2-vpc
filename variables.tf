variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ports" {
  type = list(number)
}

variable "accessKey" {
  type = string
}

variable "secretKey" {
  type = string
}