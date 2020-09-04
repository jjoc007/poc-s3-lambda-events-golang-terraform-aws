resource "aws_s3_bucket" "poc_s3_bucket" {
  bucket = "poc-my-bucket"
  acl    = "private"
}

resource "aws_s3_bucket_notification" "poc_s3_bucket_notification" {
  bucket = aws_s3_bucket.poc_s3_bucket.bucket
  lambda_function {
    lambda_function_arn = "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:${aws_lambda_function.poc_lambda_folder_1.function_name}"
    events              = ["s3:ObjectCreated:Put"]
    filter_prefix       = "folder1/"
  }

  lambda_function {
    lambda_function_arn = "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:${aws_lambda_function.poc_lambda_folder_2.function_name}"
    events              = ["s3:ObjectCreated:Put"]
    filter_prefix       = "folder2/"
  }

  lambda_function {
    lambda_function_arn = "arn:aws:lambda:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:function:${aws_lambda_function.poc_lambda_folder_2.function_name}"
    events              = ["s3:ObjectCreated:Put"]
    filter_prefix       = "folder3/"
  }

  depends_on = [
    aws_lambda_function.poc_lambda_folder_1,
    aws_lambda_function.poc_lambda_folder_2,
    aws_lambda_function.poc_lambda_folder_3,
  ]
}