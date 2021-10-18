resource "aws_route_table" "jhlee_routingtable" {
  vpc_id = aws_vpc.jhlee_vpc.id

  route{
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.jhlee_ig.id
    }

  tags = {
    Name = "jhlee-public-routingtable"
  }
}