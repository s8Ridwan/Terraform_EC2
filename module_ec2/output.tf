output "public" {
  value = aws_instance.web.public_ip  
}
output "avail" {
  value = aws_instance.web.availability_zone
}
output "sg" {
  value = aws_instance.web.security_groups
}