provider "google" {
  project = "phonic-realm-344805"  
  region = "us-central1"
}

resource "google_compute_instance" "countt-vm-tf" {
    name = "gce-vm-${count.index}"
    machine_type = "f1-micro"
    zone = "us-central1-a"
    count = 4
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
