locals {
  code_path = "${dirname(find_in_parent_folders("root.hcl"))}/main"
}

terraform {
  # source = "/home/fill/Terragrunt/Proxmox/BGP/test-opensearch/terraform"
  source = local.code_path
  # Вывести путь к коду в консоль
  before_hook "show_path" {
    commands = ["apply", "plan"]
    execute  = ["echo", "Using code path: ${local.code_path}"]
  }
}


