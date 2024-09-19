# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Governance
# Create Tag Namespaces
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
# Sample import command for Tag Namespaces:
# terraform terraform import "module.tag-namespaces[\"<<tag_namespaces terraform variable name>>\"].oci_identity_tag_namespace.tag_namespace" <<tag namespace ocid>>
############################
tag_namespaces = {
    Application = {
            compartment_id = "root"
            description = "Namespace for Application"
            name = "Application"
            },
##Add New Tag Namespaces for phoenix here##
}