resource "aws_security_group" "sg1" {
  name        = "sg1"
  description = "for connecting via ssh"
  tags = {
    NAME = "sg1"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Ingress-Rule" {
  security_group_id = aws_security_group.sg1.id
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
  cidr_ipv4	    = "0.0.0.0/0"
}

resource "aws_vpc_security_group_egress_rule" "Egress-rule1" {
  security_group_id = aws_security_group.sg1.id
  cidr_ipv4	    = "0.0.0.0/0" 
  ip_protocol       = "-1"
}
