resource "aws_lambda_permission" "allow_s3_bucket_to_lambda_f1" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.poc_lambda_folder_1.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.poc_s3_bucket.arn
}

resource "aws_lambda_permission" "allow_s3_bucket_to_lambda_f2" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.poc_lambda_folder_2.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.poc_s3_bucket.arn
}

resource "aws_lambda_permission" "allow_s3_bucket_to_lambda_f3" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.poc_lambda_folder_3.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.poc_s3_bucket.arn
}