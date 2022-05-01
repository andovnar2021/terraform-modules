output "aws_default_vpc_id" {

  value = data.aws_vpcs.my_vpcs.ids[1]

}

output "arn" {

  value = aws_security_group.dos07_terraform_sg_MODULE.arn

}

output "id" {

  value = aws_security_group.dos07_terraform_sg_MODULE.id

}

output "owner_id" {

  value = aws_security_group.dos07_terraform_sg_MODULE.owner_id

}

output "tags_all" {

  value = aws_security_group.dos07_terraform_sg_MODULE.tags_all

}
