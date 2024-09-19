# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#################################
# Network
# DRG Route Distributions - tfvars
# Allowed Values:
# drg_id can be the ocid or the key of drgs (map)
# Sample import command for drg route distribution:
# terraform import "module.drg-route-distributions[\"<<drg_route_distributions terraform variable name>>\"].oci_core_drg_route_distribution.drg_route_distribution" <<drg route distribution ocid>>
#################################
drg_route_distributions = {
# DRG Distribution for Region - phoenix
  DRG_import-spoke-routes = {
        distribution_type = "IMPORT"
        drg_id = "DRG"
        display_name = "import-spoke-routes"
},
###Add DRG Distribution here for phoenix ###
}

##########################################
# Module Block - Network
# Create DRG Route Distribution Statements
# Allowed Values:
# drg_route_distribution_id can be the ocid or the key of drg_route_distributions (map)
# Sample import command for DRG Route Distribution Statements:
# terraform import "module.drg-route-distribution-statements[\"<<drg_route_distribution_statements terraform variable name>>\"].oci_core_drg_route_distribution_statement.drg_route_distribution_statement" drgRouteDistributions/<<drg route distribution ocid>>/statements/<<drg route distribution statement ocid>>
##########################################
drg_route_distribution_statements = {
# DRG Distribution Statement for Region - phoenix
  DRG_import-spoke-routes_statement1 = {
        drg_route_distribution_id = "DRG_import-spoke-routes"
        match_criteria = [
        {
        match_type = "DRG_ATTACHMENT_TYPE"
        attachment_type = "VCN"
        },
        ]
        priority = "1"
        action = "ACCEPT"
},
###Add DRG Distribution Statement here for phoenix ###
}