## OBS: just to check validations - on provider - so no variables are created, thus it should fail on actually creating anything.
resource "acme_certificate" "certificate" {
  ## This provider comes with server_url set outside - if we remove server_url from the provider here in providers.tf it fails on validation
  provider                  = acme.provider_alias
  account_key_pem           = acme_registration.key
  common_name               = var.name
  subject_alternative_names = var.alternative_names
  key_type                  = "a key type"

  dns_challenge {
    provider = "a provider"
    config = {
      AWS_HOSTED_ZONE_ID    = var.a_zone_id
      AWS_ACCESS_KEY_ID     = var.a_access_key
      AWS_SECRET_ACCESS_KEY = var.a_SecretAccessKey
      AWS_SESSION_TOKEN     = var.a_SessionToken
      AWS_DEFAULT_REGION    = var.a_region
    }
  }
}
