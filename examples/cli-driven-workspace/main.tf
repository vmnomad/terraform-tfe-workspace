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
