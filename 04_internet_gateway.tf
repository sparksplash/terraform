resource "aws_internet_gateway" "jhlee_ig" {
  vpc_id = aws_vpc.jhlee_vpc.id

  tags = {
    Name = "jhlee-ig"
  }
}

output "vpc-id"{
    value = aws_vpc.jhlee_vpc.id
}