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

variable "AWS_REGION" {
  type = string
}

variable "AWS_ACCESS_KEY_ID" {
  type = string
  sensitive = true
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
  sensitive = true
}

provider "aws" {
  alias   = "source"
  region  = var.AWS_REGION
}

resource "aws_s3_bucket" "poiugvordt" {
  provider = aws.source
  bucket = "awretuvordt"

  tags = {
    Name        = "ewarevordt"
  }
}


