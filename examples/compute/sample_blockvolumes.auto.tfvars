# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Block Volumes
# Block Volumes - tfvars
# Allowed Values:
# compartment_id and policy_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for block volume:
# terraform import "module.block-volumes[\"<<blockvolumes terraform variable name>>\"].oci_core_volume.block_volume" <<block volume ocid>>
# terraform import "module.block-volumes[\"<<blockvolumes terraform variable name>>\"].oci_core_volume_attachment.block_vol_instance_attachment[0]" <<block volume attachment ocid>>
# terraform import "module.block-volumes[\"<<blockvolumes terraform variable name>>\"].oci_core_volume_backup_policy_assignment.volume_backup_policy_assignment[0]" <<block volume policy assignment ocid>>
############################
blockvolumes = {
     instance1_disk2 =  {
            availability_domain  = 0
            compartment_id       = "Network"
            display_name         = "instance1_disk2"
            size_in_gbs          = 150
            vpus_per_gb          = 40
            autotune_policies = [
                  {
                    autotune_type = "PERFORMANCE_BASED"
                    max_vpus_per_gb = "100"
                  },
             ]
            attach_to_instance = "instance1"
            attachment_type = "paravirtualized"
            device = "/dev/oracleoci/oraclevdb"
        },
}