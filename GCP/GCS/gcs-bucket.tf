provider "google" {
  project = "phonic-realm-344805"
  region  = "us-central1"
}

resource "google_storage_bucket" "my_bucket" {
  name     = var.name
  location = var.location
}
