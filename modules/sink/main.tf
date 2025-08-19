resource "aws_oam_sink" "this" {
  region = var.region

  name = var.name
  tags = var.tags
}

resource "aws_oam_sink_policy" "this" {
  count  = local.policy_required ? 1 : 0
  region = var.region

  sink_identifier = aws_oam_sink.this.arn

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = concat(
      length(var.source_account_ids) > 0 ? [local.source_accounts_statement] : [],
      length(var.source_org_ids) > 0 ? [local.source_organizations_statement] : [],
      length(var.source_org_paths) > 0 ? [local.source_organization_paths_statement] : [],
    )
  })
}
