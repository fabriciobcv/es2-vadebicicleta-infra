resource "aws_security_group" "alb_sg" {
  name = "${local.app_name}-sg"
  description = "Allow all trafic in 80 port and all outbound traffic"
  tags = {
    Name = "${local.app_name}-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ingress_rule" {
  security_group_id = aws_security_group.alb_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port = local.alb_port
  to_port = local.alb_port
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "egress_rule" {
  security_group_id = aws_security_group.alb_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}