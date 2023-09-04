module "repo_manager" {
  source      = "./github_repo"
  name        = "repo-manager"
  description = "Manage repo configuration in this org"
}

module "terraform_aws_concourse" {
  source      = "./github_repo"
  name        = "terraform-aws-concourse"
  description = "Terraform module for deploying Concourse onto AWS EC2"

  team_access = {
    ids = {
      team_id = data.github_team.ids.id
      access  = "push"
    }
    int_green = {
      team_id = data.github_team.int_green.id
      access  = "push"
    }
  }
}

module "manage_mysql_user" {
  source      = "./github_repo"
  name        = "manage-mysql-user"
  description = "Manages MySQL users"
}

module "manage_postgres_user" {
  source      = "./github_repo"
  name        = "manage-postgres-user"
  description = "Manages PostgreSQL users"

  team_access = {
    int_green = {
      team_id = data.github_team.int_green.id
      access  = "push"
    }
  }
}

module "terraform_aws_egress_proxy" {
  source      = "./github_repo"
  name        = "terraform-aws-egress-proxy"
  description = "Squid egress proxy for AWS"

  team_access = {
    int_green = {
      team_id = data.github_team.int_green.id
      access  = "push"
    }
  }
}

module "kong_portal_cli_lambda" {
  source      = "./github_repo"
  name        = "kong-portal-cli-lambda"
  description = "Lambda for running Kong Portal CLI"

  team_access = {
    int_green = {
      team_id = data.github_team.int_green.id
      access  = "push"
    }
  }
}

module "terraform_aws_modsecurity_crs" {
  source      = "./github_repo"
  name        = "terraform-aws-modsecurity-crs"
  description = "Terraform module to deploy ModSecurity Core Rule Set on AWS"
}

module "terraform_aws_gatus" {
  source      = "./github_repo"
  name        = "terraform-aws-gatus"
  description = "Terraform module to deploy Gatus on AWS"

  template = {
    owner = "north-kite"
    repo  = "repo-template-terraform"
  }
}

module "repo_template_terraform" {
  source      = "./github_repo"
  name        = "repo-template-terraform"
  description = "Repo template for Terraform modules"
}
