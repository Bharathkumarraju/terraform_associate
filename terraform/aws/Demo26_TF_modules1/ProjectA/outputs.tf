output "bk_vpc_id" {
  value = module.bharath_vpc.vpc_id
}

output "bk_vpc_cidr" {
  value = module.bharath_vpc.vpc_cidr
}

output "bk_public_subnet_ids" {
  value = module.bharath_vpc.public_subnet_ids
}

output "bk_private_subnet_ids" {
  value = module.bharath_vpc.private_subnet_ids
}
#----------------------------------------------------------------
output "bk_vpc_id_staging" {
  value = module.bharath_vpc_staging.vpc_id
}

output "bk_vpc_cidr_staging" {
  value = module.bharath_vpc_staging.vpc_cidr
}

output "bk_public_subnet_ids_staging" {
  value = module.bharath_vpc_staging.public_subnet_ids
}

output "bk_private_subnet_ids_staging" {
  value = module.bharath_vpc_staging.private_subnet_ids
}
#----------------------------------------------------------------

output "bk_vpc_id_prod" {
  value = module.bharath_vpc_production.vpc_id
}

output "bk_vpc_cidr_prod" {
  value = module.bharath_vpc_production.vpc_cidr
}

output "bk_public_subnet_ids_prod" {
  value = module.bharath_vpc_production.public_subnet_ids
}

output "bk_private_subnet_ids_prod" {
  value = module.bharath_vpc_production.private_subnet_ids
}

