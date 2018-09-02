resource "aws_instance" "Jenkins" {
  ami           = "ami-e1768386"  
  subnet_id     = "${aws_subnet.awstack01_private_sub.id}" 
  instance_type = "t2.micro"
  vpc_id = "${aws_vpc.awstack01_vpc.id}"
  tags {
    Name = "Jenkins"
  }
}
