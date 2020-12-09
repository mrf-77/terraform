variable "accessKey" {
    type = string
}

variable "secretKey" {
    type = string
}
variable "privatekeypath" {
    type = string
}

variable "imageId" {
    default = "ami-0739f8cdb239fe9ae"
    description = "ubuntu 16.04"
}

variable "keypair" {
    default = "Terraform_5"
}

variable "instanceType" {
    default = "t2.micro"
}

variable "vpc_id" {
    default = "vpc-0eda0c4be691022e0"
}