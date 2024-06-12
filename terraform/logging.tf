#############################
# Module Block - LBaaS Logging
# Create Log Groups and Logs
#############################

module "loadbalancer-log-groups" {
  source   = "./modules/managementservices/log-group"
  for_each = (var.loadbalancer_log_groups != null || var.loadbalancer_log_groups != {}) ? var.loadbalancer_log_groups : {}

  # Log Groups
  #Required
  compartment_id = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null

  display_name = each.value.display_name

  #Optional
  defined_tags  = each.value.defined_tags
  description   = each.value.description
  freeform_tags = each.value.freeform_tags
}

/*
output "log_group_map" {
  value = [ for k,v in merge(module.loadbalancer-log-groups.*...) : v.log_group_tf_id ]
}
*/

module "loadbalancer-logs" {
  source     = "./modules/managementservices/log"
  depends_on = [module.load-balancers, module.loadbalancer-log-groups]
  for_each   = (var.loadbalancer_logs != null || var.loadbalancer_logs != {}) ? var.loadbalancer_logs : {}

  # Logs
  #Required
  compartment_id = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null
  display_name   = each.value.display_name
  log_group_id   = length(regexall("ocid1.loggroup.oc*", each.value.log_group_id)) > 0 ? each.value.log_group_id : merge(module.loadbalancer-log-groups.*...)[each.value.log_group_id]["log_group_tf_id"]

  log_type = each.value.log_type
  #Required
  source_category        = each.value.category
  source_resource        = length(regexall("ocid1.*", each.value.resource)) > 0 ? each.value.resource : merge(module.load-balancers.*...)[each.value.resource]["load_balancer_tf_id"]
  source_service         = each.value.service
  source_type            = each.value.source_type
  defined_tags           = each.value.defined_tags
  freeform_tags          = each.value.freeform_tags
  log_is_enabled         = (each.value.is_enabled == "" || each.value.is_enabled == null) ? true : each.value.is_enabled
  log_retention_duration = (each.value.retention_duration == "" || each.value.retention_duration == null) ? 30 : each.value.retention_duration

}

/*
output "logs_id" {
  value = [ for k,v in merge(module.loadbalancer-logs.*...) : v.log_tf_id]
}
*/

#############################
# Module Block - Management Services for Object Storage
# Create Object Storage Log Groups and Logs
#############################

data "oci_objectstorage_bucket" "buckets" {
  depends_on = [module.oss-buckets]
  for_each   = var.oss_logs != null ? var.oss_logs : {}
  #Required
  name      = each.value.resource
  namespace = data.oci_objectstorage_namespace.bucket_namespace.namespace
}

module "oss-log-groups" {
  source   = "./modules/managementservices/log-group"
  for_each = var.oss_log_groups != null ? var.oss_log_groups : {}

  # Log Groups
  #Required
  compartment_id = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null

  display_name = each.value.display_name

  #Optional
  defined_tags  = each.value.defined_tags
  description   = each.value.description
  freeform_tags = each.value.freeform_tags
}

/*
output "oss_log_group_map" {
  value = [ for k,v in merge(module.oss-log-groups.*...) : v.log_group_tf_id ]
}
*/

module "oss-logs" {
  source     = "./modules/managementservices/log"
  depends_on = [module.oss-log-groups]
  for_each   = var.oss_logs != null ? var.oss_logs : {}

  # Logs
  #Required
  compartment_id = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null
  display_name   = each.value.display_name
  log_group_id   = length(regexall("ocid1.loggroup.oc*", each.value.log_group_id)) > 0 ? each.value.log_group_id : merge(module.oss-log-groups.*...)[each.value.log_group_id]["log_group_tf_id"]

  log_type = each.value.log_type
  #Required
  source_category        = each.value.category
  source_resource        = length(regexall("ocid1.*", each.value.resource)) > 0 ? each.value.resource : data.oci_objectstorage_bucket.buckets[each.key].name
  source_service         = each.value.service
  source_type            = each.value.source_type
  defined_tags           = each.value.defined_tags
  freeform_tags          = each.value.freeform_tags
  log_is_enabled         = (each.value.is_enabled == "" || each.value.is_enabled == null) ? true : each.value.is_enabled
  log_retention_duration = (each.value.retention_duration == "" || each.value.retention_duration == null) ? 30 : each.value.retention_duration

}

/*
output "oss_logs_id" {
  value = [ for k,v in merge(module.oss-logs.*...) : v.log_tf_id]
}
*/

#############################
# Module Block - Management Services for Network
# Create VCN Log Groups and Logs
#############################

module "vcn-log-groups" {
  source   = "./modules/managementservices/log-group"
  for_each = (var.vcn_log_groups != null || var.vcn_log_groups != {}) ? var.vcn_log_groups : {}

  # Log Groups
  #Required
  compartment_id = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null

  display_name = each.value.display_name

  #Optional
  defined_tags  = each.value.defined_tags
  description   = each.value.description
  freeform_tags = each.value.freeform_tags
}

/*
output "vcn_log_group_map" {
  value = [ for k,v in merge(module.vcn-log-groups.*...) : v.log_group_tf_id ]
}
*/

module "vcn-logs" {
  source     = "./modules/managementservices/log"
  depends_on = [module.subnets, module.vcn-log-groups]
  for_each   = (var.vcn_logs != null || var.vcn_logs != {}) ? var.vcn_logs : {}

  # Logs
  #Required
  compartment_id = each.value.compartment_id != null ? (length(regexall("ocid1.compartment.oc*", each.value.compartment_id)) > 0 ? each.value.compartment_id : var.compartment_ocids[each.value.compartment_id]) : null
  display_name   = each.value.display_name
  log_group_id   = length(regexall("ocid1.loggroup.oc*", each.value.log_group_id)) > 0 ? each.value.log_group_id : merge(module.vcn-log-groups.*...)[each.value.log_group_id]["log_group_tf_id"]

  log_type = each.value.log_type
  #Required
  source_category        = each.value.category
  source_resource        = length(regexall("ocid1.*", each.value.resource)) > 0 ? each.value.resource : merge(module.subnets.*...)[each.value.resource]["subnet_tf_id"]
  source_service         = each.value.service
  source_type            = each.value.source_type
  defined_tags           = each.value.defined_tags
  freeform_tags          = each.value.freeform_tags
  log_is_enabled         = (each.value.is_enabled == "" || each.value.is_enabled == null) ? true : each.value.is_enabled
  log_retention_duration = (each.value.retention_duration == "" || each.value.retention_duration == null) ? 30 : each.value.retention_duration

}

/*
output "vcn_logs_id" {
  value = [ for k,v in merge(module.vcn-logs.*...) : v.log_tf_id]
}
*/