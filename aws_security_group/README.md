provider "aws" {
  region     = "eu-central-1"

}

module "security_group" {

    source  = "/home/andovnar/terra/modul"

    name_sg = "new_DOS07"
    

    in_list_ports = [{from_port = 80, to_port = 20, protocol    = "tcp",cidr_blocks = ["0.0.0.0/0"]},{from_port = 80, to_port = 20, protocol    = "tcp",cidr_blocks = ["0.0.0.0/0"]}]

    eg_list_ports" = {from_port = 0, to_port = 0, protocol    = "-1",cidr_blocks = ["0.0.0.0/0"]}

    My_VPC = "vpc-0f194f3d56cd58736"

    desc = "My description"

    tag_name = "Example-dos07-sg"
}