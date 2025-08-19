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
| [aws_oam_sink.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink) | resource |
| [aws_oam_sink_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the OAM sink | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | Region for the sink | `string` | `"ap-southeast-1"` | no |
| <a name="input_resource_types"></a> [resource\_types](#input\_resource\_types) | Resource types to retrieve with OAM | `list(string)` | <pre>[<br/>  "AWS::CloudWatch::Metric",<br/>  "AWS::Logs::LogGroup",<br/>  "AWS::XRay::Trace"<br/>]</pre> | no |
| <a name="input_source_account_ids"></a> [source\_account\_ids](#input\_source\_account\_ids) | List of source AWS account IDs for OAM | `list(string)` | `[]` | no |
| <a name="input_source_org_ids"></a> [source\_org\_ids](#input\_source\_org\_ids) | List of source Organisation ID's for OAM | `list(string)` | `[]` | no |
| <a name="input_source_org_paths"></a> [source\_org\_paths](#input\_source\_org\_paths) | List of source Organisation unit paths for OAM | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | An array of key-value pairs to apply to the sink. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of OAM sink |
| <a name="output_id"></a> [id](#output\_id) | ID of OAM sink |
