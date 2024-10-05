variable "organization" {
    description = "Name of the TFE organization"
    type = string
}

variable "project_id" {
    description = "the id of the TFE project."
    type = string
    default = null
}

variable "tenant_name" {
    description = "The tenant's name."
    type = string
}

variable "workspace_name" {
    description = "Workspace name"
    type = string
}

variable "working_directory" {
  description = "(Optional) A relative path that Terraform will execute within. Defaults to the root of your repository."
  type = string
  default = ""
}

variable "terraform_version" {
    description = "(Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version."
    type = string
}

variable "tag_names" {
  type        = list(string)
  description = "A list of tag names for this workspace. Tags must only contain lowercase letters, numbers, colons, or hyphens."
  default     = []

  validation {
    condition     = alltrue([for tag in var.tag_names : tag == "" || can(regex("^[-a-z0-9:]+$", tag))])
    error_message = "Each tag name must contain only lowercase letters, numbers, colons, or hyphens."
  }
}
