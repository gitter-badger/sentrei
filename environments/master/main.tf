provider "google" {
  region = "us-central1"
}

module "github" {
  source = "../../modules/github"
}
