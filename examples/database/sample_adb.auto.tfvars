# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# ADB
# ADB - tfvars
# Allowed Values:
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Database--Prod" where "Database" is the parent of "Prod" compartment
############################
adb = {
     ATPDemo =  {
            compartment_id           = "CD3Demo"
            db_name                  = "atpdemo"
            display_name             = "ATPDemo"
            admin_password           = ""
            cpu_core_count           = 1
            database_edition         = null
            db_version               = "19c"
            db_workload              = "OLTP"
            license_model            = "LICENSE_INCLUDED"
            whitelisted_ips          = ["124.123.178.211","182.68.203.47"]
            network_compartment_id   = null
            nsg_ids                  = []
            subnet_id                = null
            vcn_name                 = null
        },
##Add New ADB for phoenix here##
}