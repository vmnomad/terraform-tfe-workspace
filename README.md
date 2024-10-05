# Terraform Workspace Module

<!-- BEGIN_TF_DOCS -->
CLEARROUTE TERRAFORM MODULE



## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.58.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_organization"></a> [organization](#input\_organization) | Name of the TFE organization | `string` | n/a | yes |
| <a name="input_tenant_name"></a> [tenant\_name](#input\_tenant\_name) | The tenant's name. | `string` | n/a | yes |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | Workspace name | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | the id of the TFE project. | `string` | `null` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | A list of tag names for this workspace. Tags must only contain lowercase letters, numbers, colons, or hyphens. | `list(string)` | `[]` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | (Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version. | `string` | `"1.9.6"` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | (Optional) A relative path that Terraform will execute within. Defaults to the root of your repository. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_description"></a> [description](#output\_description) | The project ID the TFE workspace belongs to |
| <a name="output_id"></a> [id](#output\_id) | Terraform Workspace ID |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | The project ID the TFE workspace belongs to |

# Examples

```hcl
terraform {
  required_version = "1.9.6"

  required_providers {
    tfe = {
      version = "0.58.0"
    }
  }

  cloud {
    organization = "YOUR-ORGANISATION"

    workspaces {
      name = "YOUR-WORKSPACE-NAME"
    }
  }
}

module "workspace" {
  source = "../.."

  organization      = "clearroute"
  tenant_name       = "cba"
  workspace_name    = "devops"
  working_directory = "application/foo"
  terraform_version = "1.9.1"
  tag_names         = ["prod", "tenant"]
}
```

## Resources


- resource.tfe_workspace.this (main.tf#2)
<!-- END_TF_DOCS -->
