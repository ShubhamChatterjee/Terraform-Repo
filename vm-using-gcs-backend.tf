resource "google_compute_instance" "first-vm-tf-gcs-backend" {
    name = "first-vm-tf-gcs-backend"
    machine_type = "f1-micro"
    region = "us-central1"
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
    
    access_config {

    }
  }

  service_account {
    email = "master-service-account@phonic-realm-344805.iam.gserviceaccount.com"
    scopes = ["cloud-platform"] 
  }
}
