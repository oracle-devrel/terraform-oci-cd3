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
nodepools = {
    cluster1_nodepool1 = {
        display_name = "nodepool1"
        cluster_name = "cluster1"
        compartment_id = "AppDev"
        kubernetes_version = "v1.28.2"
        node_shape = "VM.Standard3.Flex"
        memory_in_gbs = 32
        ocpus = 2
        image_id = "Linux"
        source_type = "IMAGE"
        boot_volume_size_in_gbs = 32
        initial_node_labels = {
                "label" = "node1" ,
                "application" = "app1"
        }
        availability_domain = 2
        fault_domains       = ["FAULT-DOMAIN-1"]
        network_compartment_id = "Network"
        vcn_name = "prod-vcn"
        subnet_id = "prod-app"
        size = 1
        cni_type = "FLANNEL_OVERLAY"
        worker_nsg_ids = ["prod-vcn-app-nsg"]
        ssh_public_key  = "ssh_public_key"
    },
    cluster1_nodepool2 = {
        display_name = "nodepool2"
        cluster_name = "cluster1"
        compartment_id = "AppDev"
        kubernetes_version = "v1.28.2"
        node_shape = "VM.Standard.E3.Flex"
        memory_in_gbs = 16
        ocpus = 1
        image_id = "Linux"
        source_type = "IMAGE"
        boot_volume_size_in_gbs = 32
        initial_node_labels = {
                "label" = "node2"
        }
        availability_domain = 1
        fault_domains       = ["FAULT-DOMAIN-1","FAULT-DOMAIN-2"]
        network_compartment_id = "Network"
        vcn_name = "prod-vcn"
        subnet_id = "prod-app"
        size = 2
        cni_type = "FLANNEL_OVERLAY"
        ssh_public_key  = "ssh_public_key"
    },
##Add New Nodepool for phoenix here##
}