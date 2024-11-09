
resource "aws_instance" "web" {
    ami = var.ami
    key_name = var.key
    instance_type = var.instance_type
    tags = {
      Name = "module_ec2"
      team = "DevOps"
      env  = var.env
    }

  
}