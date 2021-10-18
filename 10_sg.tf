resource "aws_security_group" "jhlee_allow_http" {
  name        = "allow_http"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.jhlee_vpc.id

  ingress = [
    {
      description      = "http from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = null
      security_groups = null
      self = null
    },
    {
      description      = "ssh from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = null
      security_groups = null
      self = null
    }
  ]

  egress = [
    {
      description      = "http from VPC"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      security_groups = null
      prefix_list_ids = null
      self            = null
    }
  ]


/*
  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]
*/
  tags = {
    Name = "jhlee-allow-http-ssh"
  }
}
resource "aws_security_group" "jhlee_allow_mysql" {
  name        = "allow_mysql"
  description = "Allow mysql inbound traffic"
  vpc_id      = aws_vpc.jhlee_vpc.id

  ingress = [
    {
      description       = "mysql from VPC"
      from_port         = 3306
      to_port           = 3306
      protocol          = "tcp"
      cidr_blocks       = [aws_subnet.jhlee_puba.cidr_block]
      ipv6_cidr_blocks  = ["::/0"]
      prefix_list_ids   = null
      security_groups   = null
      self              = null
    }
  ]

  egress = [
    {
      description       = "default"
      from_port         = 0
      to_port           = 0
      protocol          = "-1"
      cidr_blocks       = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = ["::/0"]
      prefix_list_ids   = null
      security_groups   = null
      self              = null
    }
  ]

  tags = {
    Name = "jhlee-allow-rds"
  }
}
