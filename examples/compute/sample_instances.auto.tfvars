# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Instances
# Instance - tfvars
# Allowed Values:
# vcn_name must be the name of the VCN as in OCI
# subnet_id can be the ocid of the subnet or the name as in OCI
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for Instance and volume backup policy:
# terraform import "module.instances[\"<<instance terraform variable name>>\"].oci_core_instance.instance" <<instance ocid>>
# terraform import "module.instances[\"<<instance terraform variable name>>\"].oci_core_volume_backup_policy_assignment.volume_backup_policy_assignment[0]" <<volume backup policy ocid>>
############################
instances = {
       instance1 =  {
            availability_domain  = 0
            compartment_id       = "Network"
            shape                = "VM.Standard.E3.Flex"
            display_name         = "instance1"
            fault_domain         = "FAULT-DOMAIN-1"
            source_id        =  "Linux"
            source_type      = "image"
            network_compartment_id = "Network"
            vcn_name         = "fwl-vcn"
            subnet_id        = "fwl-mgmt"
            assign_public_ip = false
            ocpus            = "2"
            memory_in_gbs    = 8
            ssh_authorized_keys  = "ssh_public_key"
            backup_policy          = "Bronze"
            ## Section for adding VNIC Defined and Freeform Tags
            #}
    },
##Add New Instances for phoenix here##
}