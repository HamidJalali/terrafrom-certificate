resource "aws_security_group" "name" {
    name        = var.security_group_name
    description = "Security group for ${var.security_group_name}"
    vpc_id      = var.vpc_id
}

output "demo-output" {
    value = aws_security_group.name.id + "HI"
}
