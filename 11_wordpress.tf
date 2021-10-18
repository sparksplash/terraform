resource "aws_instance" "jhlee_web_a1" {
  ami           = "ami-0e4a9ad2eb120e054"
  instance_type = "t2.micro"
  
  subnet_id = aws_subnet.jhlee_puba.id

  key_name = "tf-key-pair-cli"
  availability_zone="ap-northeast-2a"
  private_ip = "192.168.0.11"
  associate_public_ip_address = true
  
  security_groups = [aws_security_group.jhlee_allow_http.id]
  
  user_data = file("./install.sh")

 

  tags = {
    Name = "web-a1"
  
  }
}
