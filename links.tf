// Generated by insterra

module "instellar_link_xandar_hge" {
  source  = "upmaru/bootstrap/instellar"
  version = "0.8.1"

  balancer              = module.aws_compute_xandar_dga.balancer
  bootstrap_node        = module.aws_compute_xandar_dga.bootstrap_node
  cluster_address       = module.aws_compute_xandar_dga.cluster_address
  cluster_name          = module.aws_compute_xandar_dga.identifier
  insterra_component_id = 398
  kit_slug              = "pro"
  nodes                 = module.aws_compute_xandar_dga.nodes
  password_token        = module.aws_compute_xandar_dga.trust_token
  provider_name         = "aws"
  region                = var.aws_region
  uplink_channel        = "develop"
}

module "instellar_link_xandar_gvm" {
  source  = "upmaru/bootstrap/instellar//modules/service"
  version = "0.8.1"

  certificate = module.aws_database_xandar_xrx.certificate_url
  channels    = ["main", "master"]
  cluster_ids = [
    module.instellar_link_xandar_hge.cluster_id
  ]
  credential = {
    host     = module.aws_database_xandar_xrx.address
    password = module.aws_database_xandar_xrx.password
    port     = module.aws_database_xandar_xrx.port
    resource = module.aws_database_xandar_xrx.db_name
    username = module.aws_database_xandar_xrx.username
    secure   = true
  }

  driver                = "database/postgresql"
  driver_version        = module.aws_database_xandar_xrx.engine_version
  insterra_component_id = 397
  provider_name         = "aws"
  slug                  = module.aws_database_xandar_xrx.identifier
}

module "instellar_link_blackeye_mjb" {
  source  = "upmaru/bootstrap/instellar//modules/service"
  version = "0.8.1"


  channels = ["main", "master"]
  cluster_ids = [
    module.instellar_link_xandar_hge.cluster_id
  ]
  credential = {
    host     = module.aws_bucket_blackeye_uea.host
    password = module.aws_bucket_blackeye_uea.secret_access_key
    port     = module.aws_bucket_blackeye_uea.port
    resource = module.aws_bucket_blackeye_uea.region
    username = module.aws_bucket_blackeye_uea.access_key_id
    secure   = true
  }

  driver                = "bucket/aws-s3"
  driver_version        = module.aws_bucket_blackeye_uea.version
  insterra_component_id = 445
  provider_name         = "aws"
  slug                  = module.aws_bucket_blackeye_uea.identifier
}
