terraform {
  backend "s3" {
    bucket = "test-jenkins-terraform-infra"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "test-jenkins-terraform-infra"
  }
}
