# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Developer Services
# OKE Cluster - tfvars
# Allowed Values:
# vcn_name must be the name of the VCN as in OCI
# endpoint_subnet_id and service_lb_subnet_ids can be the ocid of the subnet or the name as in OCI
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# nsg_ids can be the ocid of the nsg or the name in OCI
# Sample import command for cluster:
# terraform import "module.clusters[\"<<cluster terraform variable name>>\"].oci_containerengine_cluster.cluster" <<cluster ocid>>
#############################
clusters = {
    cluster1 = {
        display_name = "cluster1"
        compartment_id = "AppDev"
        network_compartment_id = "Network"
        vcn_name = "prod-vcn"
        cluster_type     = "BASIC_CLUSTER"
        kubernetes_version = "v1.28.2"
        cni_type = "FLANNEL_OVERLAY"
        is_public_ip_enabled = "false"
        nsg_ids = ["prod-vcn-lbr-nsg"]
        endpoint_subnet_id = "prod-web"
        is_pod_security_policy_enabled = "true"
        pods_cidr = "10.244.0.0/16"
        services_cidr = "10.96.0.0/16"
        service_lb_subnet_ids = ["prod-web"]
    },
    cluster2 = {
        display_name = "cluster2"
        compartment_id = "AppDev"
        network_compartment_id = "Network"
        vcn_name = "prod-vcn"
        cluster_type     = "ENHANCED_CLUSTER"
        kubernetes_version = "v1.28.2"
        cni_type = "OCI_VCN_IP_NATIVE"
        is_public_ip_enabled = "false"
        endpoint_subnet_id = "prod-web"
        is_pod_security_policy_enabled = "false"
        service_lb_subnet_ids = ["prod-web"]
    },
##Add New Cluster for phoenix here##
}