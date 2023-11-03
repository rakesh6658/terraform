data "aws_ami" "example" {
  most_recent = true

  owners = ["amazon"]
  tags = {
    Name   = "app-server"
    Tested = "true"
  }
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20231020.1-x86_64-gp2"]
    
  }



}
resource "aws_instance" "rakesh" {
  ami = data.aws_ami.example.id
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_all.name]
}
resource "aws_security_group" "allow_all" {
  name        = "rakesh"
  vpc_id = data.aws_vpc.default.id
  description = "Allow http access"
  

  ingress {
    
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }
}
data "aws_vpc" "default" {
  default = true
} 
output "rakesh" {
 
 value = data.aws_vpc.default.id

}
