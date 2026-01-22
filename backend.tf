terraform {
  backend "s3" {
    bucket         = "my-terraform-backend-bucket"  # backend bucket created manually
    key            = "terraform-ci-cd-test/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
