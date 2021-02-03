terraform {
  required_version = "0.14.5"
  required_providers {
    aws = { source = "hashicorp/aws", version = ">= 3.24.1" }
    acme = { source = "vancluever/acme", version = ">= 2.0.0" }
  }
}
