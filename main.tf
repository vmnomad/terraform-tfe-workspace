
resource "tfe_workspace" "this" {
  name                          = local.workspace_name
  organization                  = var.organization
  project_id                    = var.project_id
  structured_run_output_enabled = false
  working_directory             = var.working_directory
  terraform_version             = var.terraform_version
  tag_names                     = var.tag_names
}
