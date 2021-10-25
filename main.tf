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
