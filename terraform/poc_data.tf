data "aws_caller_identity" "this" {}
data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "default_lambda_policy" {
  statement {
    actions = [
      "logs:CreateLogGroup",
    ]
    resources = ["arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:*"]
  }
  statement {
    actions = [
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    resources = ["arn:aws:logs:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:log-group:/aws/lambda/*:*"]
  }
}

data "aws_iam_policy_document" "poc_s3_policy_doc" {
  statement {
    actions = [
      "s3:PutObject",
      "s3:PutObjectRetention",
      "s3:PutObjectVersionAcl",
      "s3:PutObjectVersionTagging",
      "s3:PutObjectTagging",
      "s3:PutObjectLegalHold",
      "s3:PutObjectAcl"
    ]
    resources = ["arn:aws:s3:::${aws_s3_bucket.poc_s3_bucket.bucket}/*"]
  }
}