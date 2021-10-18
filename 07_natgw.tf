resource "aws_eip" "jhlee_eip1_pria" {
  vpc      = true
}

resource "aws_eip" "jhlee_eip1_pric" {
  vpc      = true
}

resource "aws_nat_gateway" "jhlee_ngw_pria" {
  allocation_id = aws_eip.jhlee_eip1_pria.id
  subnet_id     = aws_subnet.jhlee_puba.id

  tags = {
    Name = "jhlee-ngw-pria"
  }
}

resource "aws_nat_gateway" "jhlee_ngw_pric" {
  allocation_id = aws_eip.jhlee_eip1_pric.id
  subnet_id     = aws_subnet.jhlee_pubc.id

  tags = {
    Name = "jhlee-ngw-pric"
  }
}