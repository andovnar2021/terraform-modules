
resource "aws_security_group" "dos07_terraform_sg_MODULE" {

  name        = var.name_sg
  description = var.desc
  vpc_id      = var.My_VPC
  name_prefix = var.name_prefix
  revoke_rules_on_delete = var.revoke_rules_on_delete


  dynamic "ingress" {

    for_each = var.in_list_ports

    content {
      description = "Allow inbound HTTP traffic"
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks 
      
    }
    }

  dynamic "egress" {

   for_each = var.eg_list_ports
  
    content {

    description = "Allow inbound HTTP traffic"  
    from_port   = egress.value.from_port
    to_port     = egress.value.to_port
    protocol    = egress.value.protocol
    cidr_blocks = egress.value.cidr_blocks
  }
  }

  tags = {
    Name = var.tag_name
  }
}

