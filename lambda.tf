data "archive_file" "ec2auto_tag" {
  type = "zip"
  source_file = "./python/ec2auto_tag.py"
  output_path = "./python/ec2auto_tag.zip"
}
resource "aws_lambda_function" "test_lambda" {
  filename      = "./python/ec2auto_tag.zip"
  function_name = "new_ec2_auto_tag"
  role          = aws_iam_role.lambda_role.arn
  handler       = "ec2auto_tag.lambda_handler"
  runtime       = "python3.9"
}
