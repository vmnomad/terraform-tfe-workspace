output "id" {
    description = "Terraform Workspace ID"
    value = tfe_workspace.this.id
}

output "project_id_1" {
    description = "The project ID the TFE workspace belongs to"
    value = tfe_workspace.this.project_id
}