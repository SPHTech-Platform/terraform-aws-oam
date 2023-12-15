variable "account_label" {
  description = <<EOF
    Specify a friendly human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.
    You can include the following variables in your template:
    - `$AccountName` is the name of the account
    - `$AccountEmail` is a globally-unique email address, which includes the email domain, such as mariagarcia@example.com
    - `$AccountEmailNoDomain` is an email address without the domain name, such as mariagarcia
    EOF
  type        = string
  default     = "$AccountName"
}

variable "resource_types" {
  type        = list(string)
  description = "An array of strings that define which types of data that the source account shares with the monitoring account."

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
    error_message = "Valid values for OAM `resource_types` are `AWS::CloudWatch::Metric`, `AWS::Logs::LogGroup`, `AWS::XRay::Trace`, `AWS::ApplicationInsights::Application`."
  }

  default = [
    "AWS::CloudWatch::Metric",
    "AWS::Logs::LogGroup",
    "AWS::XRay::Trace",
  ]
}

variable "sink_identifier" {
  description = "The ARN of the sink in the monitoring account that you want to link to."
  type        = string
}

variable "tags" {
  description = "An array of key-value pairs to apply to the link."
  type        = map(string)
  default     = {}
}
