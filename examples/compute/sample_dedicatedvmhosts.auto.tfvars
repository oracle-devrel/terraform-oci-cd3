# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Dedicated VM Hosts
# Dedicated VM Hosts - tfvars
# Allowed Values:
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for Dedicated VM Hosts:
# terraform import "module.dedicated-hosts[\"<<dedicated_hosts terraform variable name>>\"].oci_core_dedicated_vm_host.dedicated_vm_host" <<dedicated vm host ocid>>
############################
dedicated_hosts = {
        VM1 =  {
        #Required
        availability_domain     =  0
        compartment_id          = "AppDev"
        vm_host_shape           = "DVH.Standard2.52"
        #Optional
        display_name = "VM1"
        fault_domain = "FAULT-DOMAIN-3"
    },
##Add New Dedicated VM Host for phoenix here##
}