resource "aws_vpc" "jhlee_vpc"{
    cidr_block          =   "192.168.0.0/16"
    instance_tenancy    =   "default"

    tags = {
        Name   =  "jhlee_vpc"
    }
}