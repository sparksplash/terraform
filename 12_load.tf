resource "aws_lb" "jhlee_lb" {
  name               = "jhlee-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.jhlee_allow_http.id]
  subnets            = [aws_subnet.jhlee_puba.id,aws_subnet.jhlee_pubc.id]

/*
  enable_deletion_protection = true

  access_logs {
    bucket  = aws_s3_bucket.lb_logs.bucket
    prefix  = "test-lb"
    enabled = true
  }
*/

  tags = {
    Environment = "test"
  }
}