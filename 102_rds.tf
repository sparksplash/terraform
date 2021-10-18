resource "aws_db_subnet_group" "jhlee_database" {
  name = "jhlee_db_subnet_group"
  subnet_ids = [aws_subnet.jhlee_pria.id,aws_subnet.jhlee_pric.id]
}

resource "aws_db_instance" "jhlee_db" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "wordpress"
  username             = "wordpress"
  password             = "It12345!"
  parameter_group_name = "default.mysql5.7"
  
  db_subnet_group_name = aws_db_subnet_group.jhlee_database.id

  vpc_security_group_ids = [aws_security_group.jhlee_allow_mysql.id]

  skip_final_snapshot  = true
  tags = {
      name = "jhlee_db"
  }
 /* 
  depends_on = [
    aws_db_subnet_group.tf_mydb_group
  ]
  */
}
