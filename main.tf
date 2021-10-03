module "repo_manager" {
  source      = "./github_repo"
  name        = "repo-manager"
  description = "Manage repo configuration in this org"
}

module "terraform_aws_concourse" {
  source      = "./github_repo"
  name        = "terraform-aws-concourse"
  description = "Terraform module for deploying Concourse onto AWS EC2"
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
}
