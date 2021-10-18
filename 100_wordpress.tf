resource "aws_instance" "wordpress-instance" {
  ami           = "ami-0e4a9ad2eb120e054"
  instance_type = "t2.micro"
  
  subnet_id = aws_subnet.jhlee_puba.id

  key_name = "tf-key-pair-cli"

  associate_public_ip_address = true
  
  security_groups = [aws_security_group.jhlee_allow_http.id]
  
  user_data = file("./wordpress.sh")

 

  tags = {
    Name = "wordpress"
  
  }
}
