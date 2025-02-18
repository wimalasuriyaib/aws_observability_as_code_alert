provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

# Create a CloudWatch Alarm for EC2 CPU Utilization
resource "aws_cloudwatch_metric_alarm" "high_cpu_alarm" {
  alarm_name          = "HighCPUAlarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "80"  # Set threshold to 80% CPU usage
  alarm_description   = "This alarm triggers when CPU usage exceeds 80% for 1 minute"
  dimensions = {
    InstanceId = "i-xxxxxxxxxxxxxxxxx"  # Replace with your EC2 instance ID
  }

  # Actions when the alarm state changes (No SNS here)
  alarm_actions = []

  ok_actions = []
}
