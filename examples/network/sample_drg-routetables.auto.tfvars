# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#################################
# Network
# DRG Route Tables - tfvars
# Allowed Values:
# drg_id can be ocid or the key of drgs (map)
# Sample import command for Default Route Table:
# terraform import "module.drg-route-tables[\"<<drg_route_tables terraform variable name>>\"].oci_core_drg_route_table.drg_route_table" <<drg route table ocid>>
#################################
drg_route_tables = {
# DRG Route Tables for Region - phoenix
# Start of #phoenix_DRG_rt-from-fwl# #
  DRG_rt-from-fwl = {
        drg_id = "DRG"
        display_name = "rt-from-fwl"
        import_drg_route_distribution_id = "DRG_import-spoke-routes"
        defined_tags = {}
        freeform_tags = {}
},
# End of #phoenix_DRG_rt-from-fwl# #
# Start of #phoenix_DRG_rt-to-fwl# #
  DRG_rt-to-fwl = {
        drg_id = "DRG"
        display_name = "rt-to-fwl"
        defined_tags = {}
        freeform_tags = {}
},
# End of #phoenix_DRG_rt-to-fwl# #
###Add route tables here for phoenix ###
}