module "components" {
  source = "git::https://github.com/sravanreddy28/terraform-data-monitoring.git"
  for_each                  = var.components


  zone_id                   = var.zone_id
  security_groups           = var.security_groups

  name                      = each.value["name"]
  instance_type             = each.value["instance_type"]
}