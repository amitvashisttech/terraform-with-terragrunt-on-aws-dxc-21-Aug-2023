resource "random_string" "test" {
  length = 10
  lower  = true
  upper  = false
  special     = false
}

locals {
  s3_bucket_jb1 = join("-", tolist(["my-s3-bucket-jb1", random_string.test.id ]))
  s3_bucket_jb3 = join("-", tolist(["my-s3-bucket-jb3", random_string.test.id ]))
  s3_bucket_jb4 = join("-", tolist(["my-s3-bucket-jb4", random_string.test.id ]))
}


resource "aws_s3_bucket" "jb1" {
  provider = aws.jb1
  bucket = local.s3_bucket_jb1

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "jb3" {
  provider = aws.jb3
  bucket = local.s3_bucket_jb3

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "jb4" {
  provider = aws.jb4
  bucket = local.s3_bucket_jb4

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}




