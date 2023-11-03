resource "aws_instance" "rakesh" {
    ami = var.ami_id
    for_each = var.instances
    instance_type = each.value

    tags =  {
        Name = each.key
    }

}
resource "aws_route53_record" "route53" {
    for_each = aws_instance.rakesh

  zone_id = var.zone_id
  name    = "${each.key}.${var.zone_name}"
  type    = "A"
  ttl     = "1"
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}
output "names" {
    value = aws_instance.rakesh
}
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

  