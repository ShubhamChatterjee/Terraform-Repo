provider "google" {
  project = "phonic-realm-344805"  
  region = "us-central1"
}

resource "google_compute_instance" "second-vm-tf" {
    name = "second-vm-tf"
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
      outputvalues = "yes"
  }

  service_account {
    email = "master-service-account@phonic-realm-344805.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }

}
 output "vm-id" {
     value = google_compute_instance.second-vm-tf.instance_id
 }

 output "external-ip" {
     value = google_compute_instance.second-vm-tf.network_interface[0].access_config[0].nat_ip
 }
