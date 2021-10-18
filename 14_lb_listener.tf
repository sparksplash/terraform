resource "aws_lb_listener" "jhlee_lb_front" {
  load_balancer_arn = aws_lb.jhlee_lb.arn
  port              = "80"
  protocol          = "HTTP"
 # ssl_policy        = "ELBSecurityPolicy-2016-08"
 # certificate_arn   = "arn:aws:iam::187416307283:server-certificate/test_cert_rab3wuqwgja25ct3n4jdj2tzu4"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.jhlee_lb_tg.arn
  }
}