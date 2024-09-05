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
    MountTarget-20240715-1137-57 = {
        availability_domain = "0"
        compartment_id = "Bhanu"
        network_compartment_id = "Bhanu"
        vcn_name = "bhaun_vcn"
        subnet_id = "private subnet-bhaun_vcn"
        #Optional
        display_name = "MountTarget-20240715-1137-57"
        ip_address = "10.0.1.89"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-07-15T11:38:17.722Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/bhanu.prakash.lohumi@oracle.com"
        }
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
    FileSystem-20240715-1137-57 = {
        availability_domain = "0"
        compartment_id = "Bhanu"
        #Optional
        display_name = "FileSystem-20240715-1137-57"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-07-15T11:38:17.722Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/bhanu.prakash.lohumi@oracle.com"
        }
        },
    TargetFileSystem-20240715-1139-05 = {
        availability_domain = "1"
        compartment_id = "Bhanu"
        #Optional
        display_name = "TargetFileSystem-20240715-1139-05"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-07-15T11:39:32.785Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/bhanu.prakash.lohumi@oracle.com"
        }
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
    FSE-MountTarget-20240715-1137-57-FileSystem-20240715-1137-57-FileSystem-20240715-1137-57 = {
        export_set_id = "MountTarget-20240715-1137-57"
        file_system_id = "FileSystem-20240715-1137-57"
        path = "/FileSystem-20240715-1137-57"
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
            require_privileged_source_port = "false"
        },]
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-07-15T11:38:17.722Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/bhanu.prakash.lohumi@oracle.com"
        }
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
    Replication-20240715-1144-13 = {
        compartment_id = "Bhanu"
        source_id    = "FileSystem-20240715-1137-57"
        target_id    = "FileSystem-20240715-1143-44"
        #Optional
        display_name = "Replication-20240715-1144-13"
        replication_interval = 480
        },
    Replication-20240715-1139-05 = {
        compartment_id = "Bhanu"
        source_id    = "FileSystem-20240715-1137-57"
        target_id    = "ocid1.filesystem.oc1.phx.aaaaaaaaaai27ku6obuhqllqojxwiotqnb4c2ylefuzaaaaa"
        #Optional
        display_name = "Replication-20240715-1139-05"
        replication_interval = 480
        },
}