run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "create_bucket" {
  command = plan

  variables {
    organization   = "clearroute"
    tenant_name    = "cba"
    workspace_name = run.setup_tests.tfe_workspace_name
  }

  # Check that the bucket name is correct
  assert {
    condition     = tfe_workspace.this.name == "clearroute_cba_${run.setup_tests.tfe_workspace_name}"
    error_message = "Invalid workspace name"
  }

}
