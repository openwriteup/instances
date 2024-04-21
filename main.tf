data "terraform_remote_state" "network_details" {
backend = "s3"
config = {
bucket = "student.amitow23-bucket"
key = "student.01-network-state"
region = "us-east-1"
}
}

