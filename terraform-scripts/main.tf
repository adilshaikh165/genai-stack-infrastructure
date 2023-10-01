
resource "google_compute_network" "my-network" {
  name = "my-network"
}

resource "google_compute_firewall" "allow-web_traffic" {
  name    = "allow-web-traffic"
  network = google_compute_network.my-network.name

  allow {
    protocol = "tcp"
    ports    = ["22","80","443","8080","4200"]
  }

  source_ranges = ["0.0.0.0/0"]

}

resource "google_compute_instance" "terraform-vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = google_compute_network.my-network.name

    access_config {
      // Add this block to assign an external IP address to the instance
    }
  }


  metadata_startup_script = "echo hi > /test.txt"
 
  # allow_stopping_for_update = true
}