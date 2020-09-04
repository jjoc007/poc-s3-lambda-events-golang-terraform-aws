resource "aws_lambda_function" "poc_lambda_folder_1" {
  filename      =  data.archive_file.F1Zip.output_path
  function_name = "poc_lambda_folder_1"
  role          = aws_iam_role.poc_s3_lambda_role.arn
  handler       = "main"
  source_code_hash = data.archive_file.F1Zip.output_base64sha256
  runtime = "go1.x"
}
resource "aws_lambda_function" "poc_lambda_folder_2" {
  filename      = data.archive_file.F2Zip.output_path
  function_name = "poc_lambda_folder_2"
  role          = aws_iam_role.poc_s3_lambda_role.arn
  handler       = "main"
  source_code_hash = data.archive_file.F2Zip.output_base64sha256
  runtime = "go1.x"
}

resource "aws_lambda_function" "poc_lambda_folder_3" {
  filename      = data.archive_file.F3Zip.output_path
  function_name = "poc_lambda_folder_3"
  role          = aws_iam_role.poc_s3_lambda_role.arn
  handler       = "main"
  source_code_hash = data.archive_file.F3Zip.output_base64sha256
  runtime = "go1.x"
}