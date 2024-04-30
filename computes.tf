// Generated by insterra

module "aws_compute_xandar_dga" {
  source  = "upmaru/instellar/aws"
  version = "0.9.1"

  balancer                     = false
  balancer_deletion_protection = false
  balancer_ssh                 = true
  bastion_size                 = "t3a.micro"
  bastion_ssh                  = false
  blueprint                    = var.identifier
  cluster_topology = [
    { id = 1, name = "01", size = "t3a.medium" },
    { id = 2, name = "02", size = "t3a.medium" },
  ]

  global_accelerator   = true
  identifier           = "xandar-dga"
  network_dependencies = module.aws_networking_xandar_uzk.dependencies
  node_detail_revision = 2
  node_size            = "t3a.medium"
  public_subnet_ids    = module.aws_networking_xandar_uzk.public_subnet_ids
  publicly_accessible  = false
  region               = var.aws_region
  ssh_keys             = ["zack-studio", "zack-mbp"]
  ssm                  = false
  storage_size         = 40
  volume_type          = "gp3"
  vpc_id               = module.aws_networking_xandar_uzk.vpc_id
  vpc_ip_range         = module.aws_networking_xandar_uzk.vpc_ip_range
}
