terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket6462"
    key            = "eks-cluster/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}