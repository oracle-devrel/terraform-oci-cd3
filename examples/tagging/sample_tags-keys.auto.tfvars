# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Governance
# Create Tag Keys
# Allowed Values:
# tag_namespace_id can be the ocid or the key of tag_namespaces (map)
# Sample import command for Tag Keys:
# terraform import "module.tag-keys[\"<<tag_keys terraform variable name>>\"].oci_identity_tag.tag" tagNamespaces/<<tag namespace ocid>>/tags/"<<tag key>>"
############################
tag_keys = {
    Application_department = {
            tag_namespace_id = "Application"
            description = "department"
            name = "department"
            is_cost_tracking = true
            validator = [{
            validator_type = "ENUM"
            validator_values = ["EBS","Finance","Networking"]
            }]
            },
    Application_env = {
            tag_namespace_id = "Application"
            description = "environment"
            name = "env"
            is_cost_tracking = false
            validator = [{
            validator_type = "ENUM"
            validator_values = ["dev","qa","prod"]
            }]
            },
    Application_CostCenter = {
            tag_namespace_id = "Application"
            description = "CostCenter"
            name = "CostCenter"
            is_cost_tracking = false
            },
##Add New Tag Keys for phoenix here##
}