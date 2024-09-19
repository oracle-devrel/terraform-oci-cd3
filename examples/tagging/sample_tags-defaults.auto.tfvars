# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Governance
# Create Default Tags
# Allowed Values:
# tag_definition_id can be the ocid or the key of tag_definitions (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
# Sample import command for Default Tags:
# terraform import "module.tag-defaults[\"<<tag_defaults terraform variable name>>\"].oci_identity_tag_default.tag_default" <<tag default ocid>>
########################################################
tag_defaults = {
    Application_department_Network-default = {
            tag_definition_id = "Application_department"
            compartment_id = "Network"
            value = "Networking"
            is_required =  false
            },
##Add New Tag Defaults for phoenix here##
}