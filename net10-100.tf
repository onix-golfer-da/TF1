resource "google_compute_network" "net10-100" {
  name                    = "net10-100"
  auto_create_subnetworks = "false"
  project                 = var.project
  routing_mode            = "REGIONAL"
}

resource "google_compute_subnetwork" "subnet200-23" {
  name          = "subnet200-23"
  ip_cidr_range = "10.100.200.0/23"
  network       = google_compute_network.net200-23.id
  region        = var.region
  project       = var.project
}