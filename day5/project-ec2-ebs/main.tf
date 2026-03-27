resource "aws_instance" "myserver" {
	ami = "ami-0f559c3642608c138"
	instance_type = "t3.small" 
}

resource "aws_ebs_volume" "my-vol" {

  availability_zone = "ap-south-1a"
	size              = 40

}



resource "aws_volume_attachment" "my-attach" {


	device_name = "/dev/sdh"
 	volume_id   =  aws_ebs_volume.my-vol.id 
	instance_id = aws_instance.myserver.id

}
