provider "aws" {}

resource "aws_instance" "terrordome" {
    ami =   "ami-b374d5a5"
    instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.terrordome.id}"
}