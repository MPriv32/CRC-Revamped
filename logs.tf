# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "crc_log_group" {
  name              = "/ecs/crc-app"
  retention_in_days = 30

  tags = {
    Name = "crc-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "crc_log_stream" {
  name           = "crc-log-stream"
  log_group_name = aws_cloudwatch_log_group.crc_log_group.name
}
