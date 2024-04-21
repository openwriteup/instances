data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "student.amitow23-bucket"
key = "student.01-network-state"
region = "us-east-1"
}
}
resource "aws_instance" "my_vm" {
ami = "ami-0cf43e890af9e3351"
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
instance_type = "t3.micro"
tags = {
Name = "amitvm"
}
}

