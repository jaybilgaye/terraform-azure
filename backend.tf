terraform {
  backend "remote" {
    organization = "myk8s"

    workspaces {
      name = "firstman"
    }
  }
}
