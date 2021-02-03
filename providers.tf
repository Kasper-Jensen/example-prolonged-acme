provider "acme" {
  alias      = "provider_alias"
  #server_url should not be set here. since we get it from the top layer
  #server_url = var.server_url
}
