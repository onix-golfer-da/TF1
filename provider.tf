provider "google" {
  project = "my-project-id"
  region  = "us-central1"
  credentials = $env:GOOGLE_APPLICATION_CREDENTIALS
}
