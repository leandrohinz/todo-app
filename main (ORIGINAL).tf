terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-1"

}

resource "aws_instance" "server_AUTH_API" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_AUTH-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-AUTH-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-AUTH-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_instance" "server_FRONTEND" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_FRONTEND.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-FRONTEND-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-FRONTEND-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_instance" "server_LOG-MESSAGE-PROCESSOR" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_LOG-MESSAGE-PROCESSOR.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_instance" "server_TODOS-API" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_TODOS-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-TODOS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-TODOS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_instance" "server_USERS-API" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_USERS-API.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-USERS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-USERS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_instance" "server_REDIS-DB" {
  ami           = "ami-0cbd40f694b804622"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0088df5de3a4fe490"
  vpc_security_group_ids = [aws_security_group.sg_redis-db.id,aws_security_group.sg_SSH-22.id]
  key_name      = "KP-RampUp-LJH"

  tags = {
    Name        = "EC2-Rampup-REDIS-DB-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }

  volume_tags = {
    Name        = "EC2-Rampup-REDIS-DB-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_AUTH-API" {
  name        = "SG-AUTH-API"
  description = "Security Group AUTH-API"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-AUTH-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_FRONTEND" {
  name        = "SG-FRONTEND"
  description = "Security Group FRONTEND"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-FRONTEND-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_LOG-MESSAGE-PROCESSOR" {
  name        = "SG-LOG-MESSAGE-PROCESSOR"
  description = "Security Group LOG-MESSAGE-PROCESSOR"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-LOG-MESSAGE-PROCESSOR-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}


resource "aws_security_group" "sg_TODOS-API" {
  name        = "SG-TODOS-API"
  description = "Security Group TODOS-API"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8082
    to_port     = 8082
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-TODOS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_USERS-API" {
  name        = "SG-USERS-API"
  description = "Security Group USERS-API"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 8083
    to_port     = 8083
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-USERS-API-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_redis-db" {
  name        = "SG-redis-db"
  description = "Security Group redis-db"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-redis-db-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}

resource "aws_security_group" "sg_SSH-22" {
  name        = "SG-SSH-22"
  description = "Security Group SSH-22"
  vpc_id      = "vpc-0d2831659ef89870c"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SG-EC2-Rampup-SSH-22-LJH"
    project     = "ramp-up-devops"
    responsible = "leandro.hinestroza"
  }
}