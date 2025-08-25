variable "name" {
  description = "Name of the OAM sink"
  type        = string
  default     = null
}

variable "region" {
  description = "(Optional) Region for the sink. Defaults to AWS provider region."
  type        = string
  default     = null
}

variable "source_account_ids" {
  description = "List of source AWS account IDs for OAM"
  type        = list(string)
  default     = []
}

variable "source_org_ids" {
  description = "List of source Organisation ID's for OAM"
  type        = list(string)
  default     = []
}

variable "source_org_paths" {
  description = "List of source Organisation unit paths for OAM"
  type        = list(string)
  default     = []
}

variable "resource_types" {
  description = "Resource types to retrieve with OAM"
  type        = list(string)

  validation {
    condition = alltrue([
      for resource_type in var.resource_types :
      contains([
        "AWS::CloudWatch::Metric",
        "AWS::Logs::LogGroup",
        "AWS::XRay::Trace",
        "AWS::ApplicationInsights::Application",
      ], resource_type)
    ])
    error_message = "Invalid values for `oam_resource_types`."
  }

  default = [
    "AWS::CloudWatch::Metric",
    "AWS::Logs::LogGroup",
    "AWS::XRay::Trace",
  ]
}

variable "tags" {
  description = "An array of key-value pairs to apply to the sink."
  type        = map(string)
  default     = {}
}
