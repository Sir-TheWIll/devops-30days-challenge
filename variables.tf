variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Unique S3 bucket name (must be globally unique)"
  type        = string
  default     = "sir-thewill-day1-20260216" 
  # Tip: Use format: yourname-devops-day1-YYYYMMDD
}