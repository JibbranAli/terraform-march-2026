variable "ami_id" {
	description= "Amzon linux AMI image"
	type= string
	default= "ami-0ffef61f6dc37ae89"	
}

variable "instance_type" {
	description = "EC2 Instance of 1 cpu & i gb ram"
	type= string
	default= "t3.micro"
}


variable "server_name" {
	description= "It is the name of instance = my-server"
	type = string
	default = "Myserver2"	
}
variable "instance_count" {
	description= "Number of instaces"
	type= number
	default = 1

}

variable "password" {

	type = string
	sensitive= true 
	default = "redhat"
}