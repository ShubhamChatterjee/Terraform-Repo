terraform {
  backend "gcs" {
    bucket  = "terraform-remote-backend-shubham-chatterjee"
    prefix  = "terraform/state"
  }
}
