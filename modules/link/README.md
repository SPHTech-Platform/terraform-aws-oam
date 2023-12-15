<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.15 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.15 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_oam_link.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_link) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_label"></a> [account\_label](#input\_account\_label) | Specify a friendly human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.<br>    You can include the following variables in your template:<br>    - `$AccountName` is the name of the account<br>    - `$AccountEmail` is a globally-unique email address, which includes the email domain, such as mariagarcia@example.com<br>    - `$AccountEmailNoDomain` is an email address without the domain name, such as mariagarcia | `string` | `"$AccountName"` | no |
| <a name="input_resource_types"></a> [resource\_types](#input\_resource\_types) | An array of strings that define which types of data that the source account shares with the monitoring account. | `list(string)` | <pre>[<br>  "AWS::CloudWatch::Metric",<br>  "AWS::Logs::LogGroup",<br>  "AWS::XRay::Trace"<br>]</pre> | no |
| <a name="input_sink_identifier"></a> [sink\_identifier](#input\_sink\_identifier) | The ARN of the sink in the monitoring account that you want to link to. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | An array of key-value pairs to apply to the link. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN of the link. |
| <a name="output_id"></a> [id](#output\_id) | The ID string that AWS generated as part of the link ARN. |
| <a name="output_sink_arn"></a> [sink\_arn](#output\_sink\_arn) | ARN of the sink that is used for this link. |
<!-- END_TF_DOCS -->