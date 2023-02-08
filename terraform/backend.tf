terraform {
  backend "gcs" {
    bucket = "jig-global-gsb"
    prefix = "terraform/state"
  }
}
