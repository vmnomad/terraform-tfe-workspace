terraform {
  required_version = "~>1.9.0, < 2.0.0"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
  }

}



resource "random_pet" "tfe_workspace_name" {
  length = 4
}

output "tfe_workspace_name" {
  value = random_pet.tfe_workspace_name.id
}
