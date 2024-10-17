resource "aws_s3_bucket" "robot_shop_s3" {
  bucket = var.bucket_name
}

resource "aws_dynamodb_table" "dynamodb_terraform_state_lock" {
  name = var.dynamodb_table_name
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
}