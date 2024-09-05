# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Object Storage Service
# Object Storage - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network-root-cpt--Network" where "Network-root-cpt" is the parent of "Network" compartment
# Sample import commands:
# importCommands[region.lower()].write(f'\nterraform import "module.oss-buckets[\\"{variable name of the bucket}\\"].oci_objectstorage_bucket.bucket" 'f'n/{namespace name}/b/{bucket name}')
# importCommands[region.lower()].write(f'\nterraform import "module.oss-buckets[\\"{variable name of the bucket}\\"].oci_objectstorage_replication_policy.replication_policy[0]" 'f'n/{namespace name}/b/{bucket name}/replicationPolicies/{replication policy id}')
# importCommands[region.lower()].write(f'\nterraform import "module.oss-buckets[\\"{variable name of the bucket}\\"].oci_objectstorage_object_lifecycle_policy.lifecycle_policy" 'f'n/{namespace name}/b/{bucket name}/l')
############################
buckets = {
        svc-bucket =  {
                compartment_id        = "CD3Demo"
                name                  = "svc-bucket"
                access_type           = "NoPublicAccess"
                kms_key_id            = null
                auto_tiering          = "Disabled"
                object_events_enabled = "true"
                storage_tier          = "Standard"
                retention_rules = []
                replication_policy = {}
                lifecycle_policy   = {
                    rules = [
                    ]
                  }
                versioning          = "Enabled"
                defined_tags = {}
                freeform_tags = {}
           },
   ##Add New OSS Buckets for phoenix here##
}