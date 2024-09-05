# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Database
# DBSystem-VM-BM - tfvars
# Allowed Values:
# subnet_id and nsg_ids can be ocids or the key of subnets (map) and nsgs (map)
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Database--Prod" where "Database" is the parent of "Prod" compartment
# Sample import command for DBSystem-VM-BM:
# terraform import "module.dbsystems-vm-bm[\"<<dbsystems_vm_bm terraform variable name>>\"].oci_database_db_system.database_db_system" <<dbsystem ocid>>
############################
dbsystems_vm_bm = {
       DBSYSSERESEERE = {
            availability_domain  = 0
            compartment_id       = "Hari"
            shape                = "VM.Standard.E5.Flex"
            network_compartment_id   = "Hari"
            vcn_name             = "hari_test_vcn1"
            subnet_id            = "hari_test_publicsubnet"
            hostname             = "otfdsferess"
            cpu_core_count       = 1
            database_edition     = "ENTERPRISE_EDITION"
            admin_password       = ""
            db_name              = "DBOTFO8"
            db_home_display_name = ""
            character_set       = "AL32UTF8"
            ncharacter_set      = "AL16UTF16"
            db_workload         = "OLTP"
            pdb_name              = "DBOTFDBNAME"
            ssh_public_keys        =  "DBSYSSERESEERE_otfdsferess"
            auto_backup_enabled   = true
            recovery_window_in_days = 7
            db_version              = "19.21.0.0.0"
            disk_redundancy         = "HIGH"
            nsg_ids                 = null
            display_name            = "DBSYSSERESEERE"
            cluster_name            = ""
            data_storage_size_in_gb = 256
            data_storage_percentage = 80
            license_model           = "LICENSE_INCLUDED"
            node_count              = 1
            time_zone               = "UTC"
            defined_tags = {
                    "Oracle-Tags.CreatedOn"= "2024-07-18T10:15:00.127Z" ,
                    "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/harikrishna.beerangi@oracle.com"
            }
            freeform_tags = {}
      },
}