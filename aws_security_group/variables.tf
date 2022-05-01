

variable "My_VPC" {
  
default     = "vpc-0f194f3d56cd58736"
#default     =  "${aws_default_vpc_id.value}"

}



variable "name_sg"    {
  default =   "Example_dos07sg"
}

variable "name_prefix"    {
  default =   []
}

variable "namrevoke_rules_on_deletee_sg"    {
  default =   []
}

variable "in_list_ports"    {

default = [{from_port = 80, to_port = 80, protocol    = "tcp",cidr_blocks = ["10.0.0.0/16"]},{from_port = 443, to_port = 443, protocol    = "tcp",cidr_blocks = ["10.1.0.0/16"]}]

}

variable "eg_list_ports"    {

 default = [{from_port = 0, to_port = 0, protocol    = "-1",cidr_blocks = ["0.0.0.0/0"]}]
}

variable "desc"    {

  default =   "tcp"

}

variable "tag_name"    {

  default =   "Example-dos07-sgroup"

}