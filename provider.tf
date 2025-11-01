terraform {
  backend "remote" {
    organization = "north-kite"

    workspaces {
      name = "repo-manager"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.5.0"
    }
  }
}

provider "github" {}
provider "gitlab" {}
