resource "aws_lb" "alb" {
  name               = "es2-vadebicicleta-${local.app_name}"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [local.subnet_id1, local.subnet_id2]

  tags = {
    Name = "es2-vadebicicleta-${local.app_name}"
  }
}

output "alb_fqdn" {
  value = aws_lb.alb.dns_name
}

resource "aws_lb_listener" "listener_http" {
  load_balancer_arn = aws_lb.alb.arn
  port              = local.alb_port
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Fixed response content"
      status_code  = "200"
    }
  }
}