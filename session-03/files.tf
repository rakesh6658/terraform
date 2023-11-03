resource "aws_key_pair" "rakesh_key" {
  key_name   = "rakesh"
  public_key = local.public_key
}
resource "aws_instance" "rakesh" {
    ami = local.ami_id
    instance_type = local.instance
    



}