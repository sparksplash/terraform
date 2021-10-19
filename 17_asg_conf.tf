resource "aws_launch_configuration" "jhlee_asg_config" {
    name          = "jhlee-asg-config"
    image_id      = aws_ami_from_instance.jhlee_instance_ami.id
    instance_type = "t2.micro"
    security_groups = [aws_security_group.jhlee_allow_http.id]
    key_name = "tf-key-pair-cli"
    iam_instance_profile = "admin_role"
    user_data = file("./install.sh")


    lifecycle {
        create_before_destroy = true
    }

}