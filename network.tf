# Set GCP provider
provider "google" {
  project = "hc-2b6b12a0d1a54455ab3af0925b7"
  region  = "us-central1"
}

# Create VPC network
resource "google_compute_network" "vpc_network" {
  name = "my-vpc-network"
}

# Create subnets
resource "google_compute_subnetwork" "web_subnet" {
  name          = "web-subnet"
  region        = "us-central1"
  network       = data.google_compute_network.vpc_network.self_link
  ip_cidr_range = "10.0.1.0/24"
}
