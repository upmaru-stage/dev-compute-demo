terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }

  cloud {
    organization = "upmaru-stage"

    workspaces {
      name = "dev-compute-demo"
    }
  }
}