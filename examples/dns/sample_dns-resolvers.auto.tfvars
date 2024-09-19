// Copyright (c) 2021, 2022, 2023 Oracle and/or its affiliates.
############################
# DNS
# DNS Resolvers - tfvars
# Allowed Values:
# view_id can be the ocid of the view or the name as in OCI
# compartment_id and view_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for dns-resolver :
# terraform import "module.dns-resolvers[\"<<dns-resolver terraform variable name>>\"].oci_dns_resolver.resolver" <<dns-resolver ocid>>
# terraform import "module.dns-resolvers[\"<<dns-resolver-endpoint terraform variable name>>\"].oci_dns_resolver_endpoint.resolver_endpoint" <<resolverId/{resolverId}/name/{resolverEndpointName}>>
############################
resolvers = {
       "prod-vcn" =  {
            vcn_name = "prod-vcn"
			network_compartment_id = "Network"
            display_name = "prod-vcn"
			views = {
                "prod-vcn_order1" = {
                    view_id = "prod-vcn"
                    view_compartment_id = "Network"
                }
                "prod-vcn_order2" = {
                    view_id = "nonprod-vcn"
                    view_compartment_id = "Network"
                }
			}
			endpoint_names = {
                "forwarder_endpoint" = {
                    is_forwarding = true
                    is_listening = false
                    name = "forwarder_endpoint"
                    subnet_name = "prod-app"
                    forwarding_address = "10.111.3.90"
                    listening_address = ""
                    nsg_ids = []
                }
                "listener_endpoint" = {
                    is_forwarding = false
                    is_listening = true
                    name = "listener_endpoint"
                    subnet_name = "prod-app"
                    forwarding_address = ""
                    listening_address = ""
                    nsg_ids = []
                }
			}
			resolver_rules = {
                "rule1" = {
                    client_address_conditions = []
                    destination_addresses = ["10.0.0.20"]
                    qname_cover_conditions = ["internal.example.com", "internal3.example.com"]
                    source_endpoint_name = "forwarder_endpoint"
                }
                "rule2" = {
                    client_address_conditions = []
                    destination_addresses = ["10.0.0.20"]
                    qname_cover_conditions = ["internal2.example.com"]
                    source_endpoint_name = "forwarder_endpoint"
                }
                "rule3" = {
                    client_address_conditions = []
                    destination_addresses = ["10.0.0.30"]
                    qname_cover_conditions = []
                    source_endpoint_name = "forwarder_endpoint"
                }
                "rule4" = {
                    client_address_conditions = ["10.0.2.0/24", "10.0.3.0/24"]
                    destination_addresses = ["10.0.0.40"]
                    qname_cover_conditions = []
                    source_endpoint_name = "forwarder_endpoint"
                }
			}
    },
##Add New resolvers for phoenix here##
}