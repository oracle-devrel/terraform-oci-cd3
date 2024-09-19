# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# SDDC cluster
# SDDC cluster - tfvars
# Allowed Values:
# vcn_name must be the name of the VCN as in OCI
# vlan_name must be the name of the vlan as in OCI
# subnet_id can be the ocid of the subnet or the name as in OCI
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for SDDC Workload Cluster:
# terraform import "module.sddc-clusters[\"<<sddc cluster terraform variable name>>\"].oci_ocvp_cluster.sddc_cluster" <<sddc workload cluster ocid>>
############################
sddc-clusters = {
      SDDC-1--CLUSTER-1 =  {
          compartment_id                = "AppDev"
          sddc_id                       = "SDDC-1"
          display_name                  = "CLUSTER-1"
          availability_domain           =  0
          vmware_software_version       = "7.0 update 3"
          initial_commitment            = "HOUR"
          initial_host_shape_name       = "BM.DenseIO2.52"
          initial_host_ocpu_count       = "52"
          esxi_hosts_count              = 3
          instance_display_name_prefix  = "wrkld"
          is_shielded_instance_enabled  = "false"
          network_compartment_id        = "Network"
          vcn_name                      = "sddc-depoyment-vcn"
          provisioning_subnet_id        = "snet-sddc-mgmt"
          nsx_edge_uplink1vlan_id       = "sddc_nsxedgeuplink1_vlan"
          nsx_edge_uplink2vlan_id       = ""
          nsx_edge_vtep_vlan_id         = "sddc_nsxedgevtep_vlan"
          nsx_vtep_vlan_id              = "sddc_nsxvtep_vlan"
          vmotion_vlan_id               = "sddc_vmotion_vlan"
          vsan_vlan_id                  = "sddc_vsan_vlan"
          vsphere_vlan_id               = "sddc_vsphere_vlan"
          hcx_vlan_id                   = "sddc_hcx_vlan"
          replication_vlan_id           = "sddc_replication_vlan"
          provisioning_vlan_id          = "sddc_provisioning_vlan"
          workload_network_cidr         = "192.168.19.0/24"
    },
##Add New SDDCs for phoenix here##
}