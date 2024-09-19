# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Developer Services
# OKE Nodepool - tfvars
# Allowed Values:
# vcn_name must be the name of the VCN as in OCI
# subnet_id and pod_subnet_ids can be the ocid of the subnet or the name as in OCI
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# pod_nsg_ids and worker_nsg_ids can be the ocids of the nsgs or the name in OCI
# Sample import command for nodepool:
# terraform import "module.nodepools[\"<<nodepool terraform variable name>>\"].oci_containerengine_node_pool.nodepool" <<nodepool ocid>>
#############################
virtual-nodepools = {
    cluster2_nodepool1 = {
        display_name = "nodepool1"
        cluster_name = "cluster2"
        compartment_id = "AppDev"
        node_shape = "Pod.Standard.E4.Flex"
        taints = [
        {
                "key" = "testkey1"
                "value" = "testval1"
                "effect" = "NoSchedule"
        },
        {
                "key" = "testkey2"
                "value" = "testval2"
                "effect" = "NoExecute"
        },
        ]
        availability_domain = 2
        fault_domains       = ["FAULT-DOMAIN-1","FAULT-DOMAIN-2"]
        network_compartment_id = "Network"
        vcn_name = "prod-vcn"
        subnet_id = "prod-app"
        size = 1
        pod_subnet_id = "prod-app"
        worker_nsg_ids = ["prod-vcn-app-nsg"]
    },
##Add New Virtual Nodepool for phoenix here##
}