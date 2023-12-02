data "archive_file" "zip" {
  type = "zip"
  source_dir = "${var.path}/src"
  output_path = "${var.path}/main.zip"
}

resource "aws_lambda_function" "search_nearby" {
  function_name = "search_nearby"
  filename = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  handler = "search_nearby.main"
  runtime = "python3.11"
  role = aws_iam_role.lambda_role.arn
}

resource "aws_lambda_function" "add_business" {
  function_name = "add_business"
  filename = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  handler = "add_business.main"
  runtime = "python3.11"
  role = aws_iam_role.lambda_role.arn
}

resource "aws_lambda_function" "remove_business" {
  function_name = "remove_business"
  filename = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  handler = "remove_business.main"
  runtime = "python3.11"
  role = aws_iam_role.lambda_role.arn
}

resource "aws_lambda_function" "update_business" {
  function_name = "update_business"
  filename = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  handler = "update_business.main"
  runtime = "python3.11"
  role = aws_iam_role.lambda_role.arn
}

resource "aws_lambda_function" "get_business" {
  function_name = "get_business"
  filename = data.archive_file.zip.output_path
  source_code_hash = data.archive_file.zip.output_base64sha256
  handler = "get_business.main"
  runtime = "python3.11"
  role = aws_iam_role.lambda_role.arn
}