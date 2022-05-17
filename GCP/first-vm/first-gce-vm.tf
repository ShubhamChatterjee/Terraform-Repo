provider "google" {
  project = "phonic-realm-344805"  
  region = "us-central1"
}

resource "google_compute_instance" "first-vm-tf" {
    name = "first-vm-tf"
    machine_type = "f1-micro"
    zone = "us-central1-a"
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
  metadata = {
      foo = "bar"
  }

  service_account {
    email = "master-service-account@phonic-realm-344805.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
}
