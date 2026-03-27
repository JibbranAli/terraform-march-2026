variable "instance_type" {
	default = {
		dev = "t3.small"
		prod = "t3.micro"
}
}

variable "amis" {
	default = {
		dev = "ami-0f559c3642608c138"
		prod = "ami-03793655b06c6e29a"

}
}
