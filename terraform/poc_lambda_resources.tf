data "archive_file" "F1Zip" {
  type        = "zip"
  source_dir = "lambdas/dist/poc_s3_event_f1_lambda"
  output_path = "lambdas/dist/poc_s3_event_f1_lambda.zip"
}

data "archive_file" "F2Zip" {
  type        = "zip"
  source_dir = "lambdas/dist/poc_s3_event_f2_lambda"
  output_path = "lambdas/dist/poc_s3_event_f2_lambda.zip"
}

data "archive_file" "F3Zip" {
  type        = "zip"
  source_dir = "lambdas/dist/poc_s3_event_f3_lambda"
  output_path = "lambdas/dist/poc_s3_event_f3_lambda.zip"
}
