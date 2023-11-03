data "aws_ami" "example" {
  most_recent = true

  owners = ["amazon"]
  tags = {
    Name   = "app-server"
    
  }
  filter {
    name   = "state"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20231020.1-x86_64-gp2"]
  }
}
