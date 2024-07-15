# variable "cloudflare_api_token" {}
# variable "cloudflare_account_id" {}

# provider "cloudflare" {
#   api_token = var.cloudflare_api_token
# }

# module "cloudflare_tunnel_xandar_dga" {
#   source  = "upmaru/instellar/cloudflare"
#   version = "0.1.1"

#   bastion_access = module.aws_compute_xandar_dga.bastion_access
#   blueprint      = var.identifier

#   identifier            = module.aws_compute_xandar_dga.identifier
#   cloudflare_account_id = var.cloudflare_account_id

#   zone_name = "opsmaru.net"
#   emails    = ["zack@upmaru.com"]
# }