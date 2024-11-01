// Generated by insterra

module "aws_database_xandar_xrx" {
  source  = "upmaru/instellar/aws//modules/database"
  version = "0.9.5"

  blueprint                     = var.identifier
  db_name                       = "instellardb"
  db_size                       = "db.t3.small"
  db_username                   = "instellar"
  deletion_protection           = false
  engine                        = "postgres"
  engine_version                = "15"
  identifier                    = "xandar-xrx"
  manage_credential_with_secret = false
  nodes_iam_roles = [
    module.aws_compute_xandar_dga.nodes_iam_role
  ]
  port   = 5432
  region = var.aws_region
  security_group_ids = [
    module.aws_compute_xandar_dga.nodes_security_group_id,
    module.aws_compute_xandar_dga.bastion_security_group_id
  ]
  skip_final_snapshot = true
  subnet_ids          = module.aws_networking_xandar_uzk.public_subnet_ids
  vpc_id              = module.aws_networking_xandar_uzk.vpc_id
}
