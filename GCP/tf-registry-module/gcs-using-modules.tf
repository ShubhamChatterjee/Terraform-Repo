module "cloud-storage_example_simple_bucket" {
  source  = "terraform-google-modules/cloud-storage/google//examples/simple_bucket"
  version = "3.2.0"
  # insert the 1 required variable here
  project_id = "phonic-realm-344805"
}