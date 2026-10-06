resource "aws_s3_bucket" "terraform_state" {
   bucket = "uma-terraform-state-2026-demo"
   tags = {
     Name = "Terraform State Bucket"
 }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "S"
 }
}