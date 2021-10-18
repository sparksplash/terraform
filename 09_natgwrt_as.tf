resource "aws_route_table_association" "jhlee_pria_as" {
  subnet_id      = aws_subnet.jhlee_pria.id
  route_table_id = aws_route_table.jhlee_natrt_pria.id
}

resource "aws_route_table_association" "jhlee_pric_as" {
  subnet_id      = aws_subnet.jhlee_pric.id
  route_table_id = aws_route_table.jhlee_natrt_pric.id
}