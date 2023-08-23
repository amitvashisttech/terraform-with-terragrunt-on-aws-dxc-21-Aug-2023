provider "aws" {
  region  = "us-east-2"
  version = "=4.46.0"
}

provider "aws" {
  region  = "us-west-2"
  alias   = "myprovider2"
  version = "=4.46.0"
}