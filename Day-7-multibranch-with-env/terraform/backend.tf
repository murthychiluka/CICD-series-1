terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-unique-name"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
    # "key" is passed dynamically via -backend-config in the Jenkinsfile
    # so each environment gets its own state file: dev/, test/, prod/
  }
}