# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Storage
# Mount Target - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for Mount Target:
# terraform import "module.mts[\"<<mount_targets terraform variable name>>\"].oci_file_storage_mount_target.mount_target" <<mount target ocid>>
############################
mount_targets = {
    MT1 = {
        availability_domain = "1"
        compartment_id = "Network"
        network_compartment_id = "Network"
        vcn_name = "fwl-vcn"
        subnet_id = "fwl-mgmt"
        #Optional
        display_name = "MT1"
        nsg_ids = ["phx-nsg1"]
        },
}
# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Storage
# FSS - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for FSS:
# terraform import "module.fss[\"<<fss terraform variable name>>\"].oci_file_storage_file_system.file_system" <<file system ocid>>
############################
fss = {
    FSS1 = {
        availability_domain = "1"
        compartment_id = "Network"
        #Optional
        display_name = "FSS1"
        },
}
# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Storage
# Export Options - tfvars
# Allowed Values:
# compartment_id and policy_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network-root-cpt--Network" where "Network-root-cpt" is the parent of "Network" compartment
# Sample import command for Export Options:
# terraform import "module.fss-export-options[\"<<nfs_export_options terraform variable name>>\"].oci_file_storage_export.export" <<export option ocid>>
############################
nfs_export_options = {
    FSE-MT1-FSS1-fss1 = {
        export_set_id = "MT1"
        file_system_id = "FSS1"
        path = "/fss1"
        export_options=[{
            #Required
            source = "0.0.0.0/0"
            #Optional
            access = "READ_WRITE"
            allowed_auth = ["SYS"]
            anonymous_gid = "65534"
            anonymous_uid = "65534"
            identity_squash = "NONE"
            is_anonymous_access_allowed = "false"
            require_privileged_source_port = "true"
        },{
            #Required
            source = "20.20.20.20/32"
            #Optional
            access = "READ_WRITE"
            allowed_auth = ["SYS"]
            anonymous_gid = "65534"
            anonymous_uid = "65534"
            identity_squash = "NONE"
            is_anonymous_access_allowed = "false"
            require_privileged_source_port = "false"
        },{
            #Required
            source = "10.10.10.10"
            #Optional
            access = "READ_ONLY"
            allowed_auth = ["SYS"]
            anonymous_gid = "65534"
            anonymous_uid = "65534"
            identity_squash = "NONE"
            is_anonymous_access_allowed = "false"
            require_privileged_source_port = "false"
        },]
        },
}
# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Storage
# FSS REPLICATION - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for FSS:
# terraform import "module.fss-replication[\"<<fss replication terraform variable name>>\"].oci_file_storage_replication.file_system_replication" <<file system ocid>>
############################
fss_replication = {
}