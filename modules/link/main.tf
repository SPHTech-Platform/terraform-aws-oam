resource "aws_oam_link" "this" {
  label_template  = var.account_label
  resource_types  = var.resource_types
  sink_identifier = var.sink_identifier
  tags            = var.tags
}
