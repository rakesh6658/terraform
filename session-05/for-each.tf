
resource "aws_security_group" "allow_all" {

  description = "Allow defined rules"
 name = "rakesh" 

 dynamic "ingress" {
    for_each = var.sg_names
    content {
    from_port        = ingress.value.from_port
    to_port          = ingress.value.to_port
    protocol         = ingress.value.protocol
    cidr_blocks      = ingress.value.cidr_blocks
    description      = ingress.value.description
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}

  