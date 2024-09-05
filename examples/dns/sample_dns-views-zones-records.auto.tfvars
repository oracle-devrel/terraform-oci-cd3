// Copyright (c) 2021, 2022, 2023 Oracle and/or its affiliates.
############################
# DNS
# DNS Views - tfvars
# Allowed Values:
# view_id can be the ocid of the view or the name as in OCI
# compartment_id and view_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for dns-view :
# terraform import "module.dns-views[\"<<dns-view terraform variable name>>\"].oci_dns_view.view" <<dns-view ocid>>
############################
views = {
       "custom-view-1" =  {
            compartment_id       = "Network"
            display_name         = "custom-view-1"
    },
       "custom-view-2" =  {
            compartment_id       = "Network"
            display_name         = "custom-view-2"
    },
##Add New DNS Views for phoenix here##
}

############################
# DNS
# DNS Zones - tfvars
# Allowed Values:
# view_id can be the ocid of the view or the name as in OCI
# compartment_id and view_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for dns-zone :
# terraform import "module.dns-zones[\"<<dns-zone terraform variable name>>\"].oci_dns_zone.zone" <<dns-zone ocid>>
############################
zones = {
   "custom-view-1_zone1_com" =  {
            compartment_id       = "Network"
            display_name         = "zone1.com"
            zone_type            = ""
            view_compartment_id = "Network"
            view_id = "custom-view-1"
    },
   "custom-view-2_zone2_com" =  {
            compartment_id       = "Network"
            display_name         = "zone2.com"
            zone_type            = ""
            view_compartment_id = "Network"
            view_id = "custom-view-2"
    },
##Add New DNS Zones for phoenix here##
}

############################
# DNS
# DNS Records - tfvars
# Allowed Values:
# view_id can be the ocid of the view or the name as in OCI
# compartment_id and view_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for dns-rrset :
# terraform import "module.dns-rrsets[\"<<dns-rrset terraform variable name>>\"].oci_dns_rrset.rrset" <<dns-rrset ocid>>
############################
rrsets = {
   "custom-view-1_zone1_com_domain1_zone1_com_A" =  {
            zone_id = "zone1.com"
            domain         = "domain1.zone1.com"
            view_id = "custom-view-1"
            view_compartment_id = "Network"
            compartment_id = "Network"
            rtype = "A"
            ttl = 3600
            rdata = ["10.20.1.10", "10.20.1.20"]
    },
   "custom-view-1_zone1_com_domain2_zone1_com_CNAME" =  {
            zone_id = "zone1.com"
            domain         = "domain2.zone1.com"
            view_id = "custom-view-1"
            view_compartment_id = "Network"
            compartment_id = "Network"
            rtype = "CNAME"
            ttl = 300
            rdata = ["host1.example.com"]
    },
   "custom-view-2_zone2_com_domain1_zone2_com_A" =  {
            zone_id = "zone2.com"
            domain         = "domain1.zone2.com"
            view_id = "custom-view-2"
            view_compartment_id = "Network"
            compartment_id = "Network"
            rtype = "A"
            ttl = 300
            rdata = ["10.20.1.30"]
    },
##Add New rrsets for phoenix here##
}