provider "google" {
  project = "phonic-realm-344805"  
  region = "us-central1"
}

resource "google_compute_instance" "vm-with-variable-tf" {
    name = "vm-with-variable-tf"
    machine_type = var.vm_type
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
