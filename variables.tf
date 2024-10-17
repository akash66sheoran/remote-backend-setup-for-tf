variable "bucket_name" {
  default = "robot-shop-tf-remote-backend"
}

variable "dynamodb_table_name" {
  default = "terraform-state-lock-dynamo"
}