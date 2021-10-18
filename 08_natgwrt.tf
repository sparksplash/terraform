resource "aws_route_table" "jhlee_natrt_pria" {
  vpc_id = aws_vpc.jhlee_vpc.id

  route{
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.jhlee_ngw_pria.id
    }

  tags = {
    Name = "jhlee-natrt-pria"
  }
}

resource "aws_route_table" "jhlee_natrt_pric" {
  vpc_id = aws_vpc.jhlee_vpc.id

  route{
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_nat_gateway.jhlee_ngw_pric.id
    }

  tags = {
    Name = "jhlee-natrt-pric"
  }
}