terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.83.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region = var.region
  zone = var.zone
  credentials = file(var.google_credentials_path)
}
