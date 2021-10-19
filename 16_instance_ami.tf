resource "aws_ami_from_instance" "jhlee_instance_ami" {
  name               = "jhlee_instance_ami"
  source_instance_id = aws_instance.jhlee_web_a1.id
}