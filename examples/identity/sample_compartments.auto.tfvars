# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Identity
# Compartments - tfvars
# Allowed Values:
# parent_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : parent_compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or parent_compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
# Sample import command for compartments:
# terraform import "module.iam-compartments[\"<<compartment variable name>>\"].oci_identity_compartment.compartment" <<compartment ocid>>
# terraform import "module.sub-compartments-level1[\"<<compartment variable name>>\"].oci_identity_compartment.compartment" <<compartment ocid>>
# terraform import "module.sub-compartments-level2[\"<<compartment variable name>>\"].oci_identity_compartment.compartment" <<compartment ocid>>
# terraform import "module.sub-compartments-level3[\"<<compartment variable name>>\"].oci_identity_compartment.compartment" <<compartment ocid>>
# terraform import "module.sub-compartments-level4[\"<<compartment variable name>>\"].oci_identity_compartment.compartment" <<compartment ocid>>
# terraform import "module.sub-compartments-level5[\"<<compartment variable name>>\"].oci_identity_compartment.compartment" <<compartment ocid>>
############################
compartments = {
    root = {
            AppDev = {
                parent_compartment_id = null
                name               = "AppDev"
                description        = "Compartment for all resources related to application development: functions, OKE, API Gateway, streaming, notifications."
              },
            Database = {
                parent_compartment_id = null
                name               = "Database"
                description        = "Compartment for all database related resources."
              },
            Network = {
                parent_compartment_id = null
                name               = "Network"
                description        = "Compartment for all network related resources: VCNs, subnets, network gateways, security lists, NSGs, load balancers, VNICs."
              },
            Security = {
                parent_compartment_id = null
                name               = "Security"
                description        = "Compartment for all security related resources: vaults."
              },
           },
    compartment_level1 = {
            },
    compartment_level2 = {
            },
    compartment_level3 = {
            },
    compartment_level4 = {
            },
    compartment_level5 = {
            }
    }