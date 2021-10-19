resource "aws_instance" "jhlee_web_a1" {
  ami           = "ami-0e4a9ad2eb120e054"
  instance_type = "t2.micro"
  
  subnet_id = aws_subnet.jhlee_puba.id

  key_name = "tf-key-pair-cli"
  availability_zone="ap-northeast-2a"
  private_ip = "192.168.0.11"
  user_data = file("./wordpress.sh")
  
  #security_groups = [aws_security_group.jhlee_allow_http.id]
  vpc_security_group_ids = [aws_security_group.jhlee_allow_http.id]
  tags = {
    Name = "web-a1"
  
  }
}
resource "aws_eip" "jhlee_eip"{

  vpc = true
  instance = aws_instance.jhlee_web_a1.id
  associate_with_private_ip = "192.168.0.11"
  depends_on = [aws_internet_gateway.jhlee_ig]

}
