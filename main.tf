module "repo-manager" {
  source      = "./github_repo"
  name        = "repo-manager"
  description = "Manage repo configuration in this org"
}