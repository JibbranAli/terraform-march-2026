variable "enviro"  {

  default = ["web" , "app", "db"]


}

variable "servers" {


  default = {
  dev = "t3.micro"
  pod= "t3.small"
  }

}


variable "instance_count" {

	default = 2
}

variable "region"{

	default = "ap-south-1"
}
