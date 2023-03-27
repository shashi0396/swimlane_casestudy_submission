terraform {
  backend "s3" {
    bucket = "swimlane-test"
    key    = "backend_swimlane"
    region = "us-east-2"
  }
}
