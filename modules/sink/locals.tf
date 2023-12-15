locals {
  source_accounts_statement = {
    Effect = "Allow"
    Principal = {
      "AWS" = var.source_account_ids
    }
    Action   = ["oam:CreateLink", "oam:UpdateLink"]
    Resource = "*"
    Condition = {
      "ForAllValues:StringEquals" = {
        "oam:ResourceTypes" = var.resource_types
      }
    }
  }
  source_organizations_statement = {
    Effect    = "Allow"
    Principal = "*"
    Action    = ["oam:CreateLink", "oam:UpdateLink"]
    Resource  = "*"
    Condition = {
      "ForAllValues:StringEquals" = {
        "oam:ResourceTypes" = var.resource_types
      }
      "ForAnyValue:StringEquals" = {
        "aws:PrincipalOrgID" = var.source_org_ids
      }
    }
  }
  source_organization_paths_statement = {
    Effect    = "Allow"
    Principal = "*"
    Action    = ["oam:CreateLink", "oam:UpdateLink"]
    Resource  = "*"
    Condition = {
      "ForAllValues:StringEquals" = {
        "oam:ResourceTypes" = var.resource_types
      }
      "ForAnyValue:StringLike" : {
        "aws:PrincipalOrgPaths" : var.source_org_paths
      }
    }
  }

  policy_required = length(concat(
    var.source_account_ids,
    var.source_org_ids,
    var.source_org_paths,
  )) > 0
}
