module "oam_sink" {
  source = "../../modules/sink"

  name = "oam-sink"
  source_account_ids = [
    "1234567890",
  ]
  source_org_paths = [
    "o-a1b2c3d4e5/r-f6g7h8i9j0example/",
  ]
}

module "oam_sink_us_east_1" {
  source = "../../modules/sink"

  region = "us-east-1"
  name   = "oam-sink"

  source_account_ids = [
    "1234567890",
  ]
  source_org_paths = [
    "o-a1b2c3d4e5/r-f6g7h8i9j0example/",
  ]
}
