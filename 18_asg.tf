resource "aws_placement_group" "jhlee_pg" {
  name     = "jhlee-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "jhlee_asg" {
    name                      = "jhlee-asg"
    max_size                  = 4
    min_size                  = 1
    health_check_grace_period = 120
    health_check_type         = "ELB"
    desired_capacity          = 1
    force_delete              = true
   # placement_group           = aws_placement_group.jhlee_pg.id
    launch_configuration      = aws_launch_configuration.jhlee_asg_config.name
    vpc_zone_identifier       = [aws_subnet.jhlee_puba.id, aws_subnet.jhlee_pubc.id]

}