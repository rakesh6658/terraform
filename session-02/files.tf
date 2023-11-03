resource "aws_key_pair" "rakesh_key" {
  key_name   = "rakesh"
  public_key = file("${path.module}/rakesh.pub")
}