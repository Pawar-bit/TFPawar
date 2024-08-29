variable "Dev_instance_type" {
    default = "t2.micro"
  
}
variable "test_instance_type" {
    default = "t2.micro"
}

variable "prod_instance_type" {
    default = "t2,large"
}

variable "environment" {
    description = "environment (dev, test, prd)"
    type = string
    default = "dev"  
}

variable "instance_type" {
    default = "t2.large"
}

locals {
  instance_type = {
    Dev = var.Dev_instance_type
    test = var.test_instance_type
    prd = var.prod_instance_type
  }
}