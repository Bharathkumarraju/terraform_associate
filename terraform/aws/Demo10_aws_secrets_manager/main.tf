provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_db_instance" "prod" {
  identifier           = "prod-mysql-rds"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  apply_immediately    = true
  username             = "administrator"
  password             = data.aws_secretsmanager_secret_version.rds_password.secret_string
}

resource "random_password" "main" {
  length = 20
  special = true
  override_special = "#!()_"
}

//store password
resource "aws_secretsmanager_secret" "rds_password" {
  name = "/prod/rds/password"
  description = "master password for rds"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "rds_password" {
  secret_id = aws_secretsmanager_secret.rds_password.id
  secret_string = random_password.main.result
}

//Retrieve password
data "aws_secretsmanager_secret_version" "rds_password" {
  secret_id = aws_secretsmanager_secret.rds_password.id
  depends_on = [aws_secretsmanager_secret_version.rds_password]
}


resource "aws_secretsmanager_secret" "rds_all" {
  name  = "/prod/rds/all"
  description = "All details for my RDS DataBase"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "rds_all" {
  secret_id = aws_secretsmanager_secret.rds_all.id
  secret_string = jsonencode({
    rds_address = aws_db_instance.prod.address
    rds_port    = aws_db_instance.prod.port
    rds_username = aws_db_instance.prod.username
    rds_password = aws_db_instance.prod.password
  })
}

//Retrieve all
data "aws_secretsmanager_secret_version" "rds_all" {
  secret_id = aws_secretsmanager_secret.rds_all.id
  depends_on = [aws_secretsmanager_secret_version.rds_all]
}

#------- outputs-------------------------------------------
output "rds_Address" {
  value = aws_db_instance.prod.address
}
output "rds_port" {
  value = aws_db_instance.prod.port
}
output "rds_username" {
  value = aws_db_instance.prod.username
}
output "rds_password" {
  value = random_password.main.result
}

output "rds_all" {
  value = jsondecode(data.aws_secretsmanager_secret_version.rds_all.secret_string)
}

output "bkjson_rds_address" {
  value = jsondecode(data.aws_secretsmanager_secret_version.rds_all.secret_string)["rds_address"]
}

output "bkjson_rds_port" {
  value = jsondecode(data.aws_secretsmanager_secret_version.rds_all.secret_string)["rds_port"]
}

output "bkjson_rds_username" {
  value = jsondecode(data.aws_secretsmanager_secret_version.rds_all.secret_string)["rds_username"]
}

output "bkjson_rds_password" {
  value = jsondecode(data.aws_secretsmanager_secret_version.rds_all.secret_string)["rds_password"]
}