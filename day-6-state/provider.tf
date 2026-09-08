provider "aws" {
  region  = "ap-south-1"
  profile = "dev"
}

terraform {
  backend "s3" {
    bucket                   = "yashcbz.space"
    region                   = "ap-south-1"
    profile                  = "dev"
    use_lockfile             = "true"
    key                      = "terraform.tfstate"
    shared_credentials_files = ["/root/.aws/credentials"]

  }
}
