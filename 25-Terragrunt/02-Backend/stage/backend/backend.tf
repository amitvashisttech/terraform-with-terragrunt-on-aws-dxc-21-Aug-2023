# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket = "my-s3-bucket-jb1-z25c4q3uxs"
    key    = "stage/backend/terrafrom.tfstate"
    region = "us-east-2"
  }
}
