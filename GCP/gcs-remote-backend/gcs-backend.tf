terraform {
  backend "gcs" {
    bucket  = "terraform-remote-backend-12052022"
    prefix  = "terraform/state"
  }
}
