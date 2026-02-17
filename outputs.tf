output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.portfolio_bucket.bucket
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.portfolio_bucket.arn
}

output "bucket_versioning_status" {
  description = "Versioning status of the S3 bucket"
  value       = aws_s3_bucket_versioning.portfolio_versioning.versioning_configuration[0].status
}