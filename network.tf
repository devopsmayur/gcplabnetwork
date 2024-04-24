# Set GCP provider
provider "google" {
  project = "hc-2b6b12a0d1a54455ab3af0925b7"
  region  = "us-central1"
}

# Create VPC network
resource "google_compute_network" "vpc_network" {
  name = "my-vpc-network"
}

output "nw" {
  value = google_compute_network.vpc_network.name
}
