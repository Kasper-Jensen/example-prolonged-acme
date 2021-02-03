## OBS: just to check validations - on provider - so no variables are created
resource "acme_certificate" "certificate" {
  provider = acme.provider_alias
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
