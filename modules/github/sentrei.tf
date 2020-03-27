resource "github_repository" "sentrei" {
  name         = "sentrei"
  description  = "sentrei"
  private      = true
  has_issues   = true
  has_projects = true
}

resource "github_branch_protection" "master" {
  repository     = github_repository.sentrei.name
  branch         = "master"
  enforce_admins = false

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    strict   = true
    contexts = ["flutter"]
  }
}

resource "github_branch_protection" "alpha" {
  repository = github_repository.sentrei.name
  branch     = "alpha"
}

resource "github_branch_protection" "beta" {
  repository = github_repository.sentrei.name
  branch     = "beta"
}