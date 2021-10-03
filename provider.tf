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
  }
}

provider "github" {}
