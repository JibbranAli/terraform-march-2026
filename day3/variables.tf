variable "region" {
	type= string
	default = "ap-south-1"
}

variable "ami" {
        type= string
        default = "ami-0ffef61f6dc37ae89"
}


variable "instance_type" {
        type= string
        default = "t3.micro"
}

variable "name" {
        type= string
        default = "new-myserver"
}


