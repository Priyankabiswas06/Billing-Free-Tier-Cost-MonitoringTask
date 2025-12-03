provider "aws" {
  region = "us-east-1"
}

resource "aws_sns_topic" "billing_alerts" {
  name = "FirstName_Lastname_Billing_Alerts"
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.billing_alerts.arn
  protocol  = "email"
  endpoint  = "your-email@example.com" # <-- replace with your email
}

resource "aws_cloudwatch_metric_alarm" "billing_alarm" {
  alarm_name          = "FirstName_Lastname_Billing_Alarm_100INR"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "EstimatedCharges"
  namespace           = "AWS/Billing"
  threshold           = 100
  alarm_description   = "Alarm when AWS billing exceeds ₹100"
  statistic           = "Maximum"

  dimensions = {
    Currency = "INR"
  }

  alarm_actions = [
    aws_sns_topic.billing_alerts.arn,
  ]
}
