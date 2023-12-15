output "arn" {
  description = "The ARN of the link."
  value       = aws_oam_link.this.arn
}

output "id" {
  description = "The ID string that AWS generated as part of the link ARN."
  value       = aws_oam_link.this.link_id
}

output "sink_arn" {
  description = "ARN of the sink that is used for this link."
  value       = aws_oam_link.this.sink_arn
}
