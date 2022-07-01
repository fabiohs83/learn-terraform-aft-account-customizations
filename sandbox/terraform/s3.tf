data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket" {
  bucket = "aft-sandbox-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
  tags = {
    Name        = "My AFT bucket-${data.aws_caller_identity.current.account_id}"
    Pipeline    = "aft-account-customizations"
  }
}
