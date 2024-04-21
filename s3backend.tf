terraform {
backend "s3" {
bucket = "student.amitow23-bucket"
key = "student.01-instance-state"
region = "us-east-1"
}
}
