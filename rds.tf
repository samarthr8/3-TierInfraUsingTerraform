resource "aws_db_instance" "default" {
  identifier           = "mysql-db-01"	
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "mydb01"
  password             = "mydb01234"
  db_subnet_group_name = 
  security_group_names = []
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
