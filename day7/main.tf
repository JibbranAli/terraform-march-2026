provider "aws"{
	region = "ap-south-1"
}

resource "aws_instance" "my-instance" {

	for_each = var.instance_type 

  ami = var.amis[each.key]

  instance_type = each.value

  tags = {
    Name = each.key
  }
}

