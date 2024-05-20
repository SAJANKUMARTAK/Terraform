resource "aws_instance" "webserver" {
  ami           = "ami-05a5bb48beb785bf1"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.sg1.id}"]
  key_name = aws_key_pair.key1.key_name
  tags = {
    NAME = "Ec2-Instance1"
  }
}
