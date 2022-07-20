terraform {
    required_providers {
        github = {
            source = "integrations/github"
            version = "4.3.2"
        }
    }
}

provider "github" {
    # PAC created in github
    token = 
}

# Create new github repo
resource "github_repository" "terraform-repo" {
    name = "terraform-repo"
    visibility = "private"
}