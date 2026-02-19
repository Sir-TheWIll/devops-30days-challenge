# CloudWatch Alarm for CPU utilization
# resource "aws_cloudwatch_metric_alarm" "cpu_high" {
#   alarm_name          = "devops-challenge-cpu-high"
#   comparison_operator = "GreaterThanThreshold"
#   evaluation_periods  = "2"
#   metric_name         = "CPUUtilization"
#   namespace           = "AWS/EC2"
#   period              = "120"
#   statistic           = "Average"
#   threshold           = "80"
#   alarm_description   = "This alarm monitors EC2 CPU utilization"
#   alarm_actions       = [aws_sns_topic.alerts.arn]
#
#   dimensions = {
#     InstanceId = aws_instance.web_server.id
#   }
#
#   tags = {
#     Day = "3"
#   }
# }
#
# # CloudWatch Alarm for Status Check Failed
# resource "aws_cloudwatch_metric_alarm" "status_check_failed" {
#   alarm_name          = "devops-challenge-status-check-failed"
#   comparison_operator = "GreaterThanThreshold"
#   evaluation_periods  = "2"
#   metric_name         = "StatusCheckFailed"
#   namespace           = "AWS/EC2"
#   period              = "60"
#   statistic           = "Maximum"
#   threshold           = "0"
#   alarm_description   = "This alarm monitors EC2 status check failures"
#   alarm_actions       = [aws_sns_topic.alerts.arn]
#
#   dimensions = {
#     InstanceId = aws_instance.web_server.id
#   }
#
#   tags = {
#     Day = "3"
#   }
# }

# SNS Topic for alerts
resource "aws_sns_topic" "alerts" {
  name = "devops-challenge-alerts"

  tags = {
    Day = "3"
  }
}

# SNS Topic Policy (allow CloudWatch to publish)
resource "aws_sns_topic_policy" "alerts_policy" {
  arn = aws_sns_topic.alerts.arn

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "cloudwatch.amazonaws.com"
        }
        Action   = "SNS:Publish"
        Resource = aws_sns_topic.alerts.arn
        Condition = {
          ArnLike = {
            "aws:SourceArn" = "arn:aws:cloudwatch:*:*:alarm:*"
          }
        }
      }
    ]
  })
}