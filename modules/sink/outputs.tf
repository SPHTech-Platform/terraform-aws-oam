output "oam_sink_id" {
  description = "ID of OAM sink"
  value       = aws_oam_sink.this.id
}

output "oam_sink_arn" {
  description = "ARN of OAM sink"
  value       = aws_oam_sink.this.arn
}
