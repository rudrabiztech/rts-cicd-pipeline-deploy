resource "google_compute_instance" "default" {
  name         = "k8smaster4"
  machine_type = "e2-micro"
  zone         = "asia-southeast1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "centos-7-v20230203"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  # service_account {
  #   # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
  #   email  = google_service_account.default.email
  #   scopes = ["cloud-platform"]
  # }
}
