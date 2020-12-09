provider "aws" {
    region     = "us-east-1"
    access_key = var.accessKey
    secret_key = var.secretKey
}

resource "aws_instance" "App_server" {
    ami           = var.imageId
    instance_type = var.instanceType
    key_name      = var.keypair
   
  connection {
    type     = "ssh"
    user     = "ubuntu"
    privatekey = file(var.privatekeypath)
    }
  tags = {
    Name = "ubuntu_16.04"
  }
  
}

resource "aws_security_group" "All_specific_ports_12" {
  name ="All_specific_ports_12"
  description ="Allow all ports"
  vpc_id      = var.vpc_id

  ingress {
    description = "TLS from VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "All traffic"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ports_1"
  }
}

resource "aws_db_instance" "aws_db_instance_1" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "raghu"
  password             = "raghu1234"
  parameter_group_name = "default.mysql5.7"
}