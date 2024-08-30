terraform {
  cloud { 
    organization = "Test-268" 

    workspaces { 
      name = "test-cli" 
    } 
  } 
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "5.50.0"
   }
 }
}

provider "aws" {
  alias   = "source"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "poiug" {
  provider = aws.source
  bucket = "awretu"

  tags = {
    Name        = "eware"
  }
}
