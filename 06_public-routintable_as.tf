resource "aws_route_table_association" "jhlee_puba_as" {
  subnet_id      = aws_subnet.jhlee_puba.id
  route_table_id = aws_route_table.jhlee_routingtable.id
}

resource "aws_route_table_association" "jhlee_pubc_as" {
  subnet_id      = aws_subnet.jhlee_pubc.id
  route_table_id = aws_route_table.jhlee_routingtable.id
}