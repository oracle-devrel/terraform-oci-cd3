# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
#
# Variables Block
# OCI
#
############################

variable "tenancy_ocid" {
  type    = string
  default = "<TENANCY OCID HERE>"
}

variable "user_ocid" {
  type    = string
  default = "<USER OCID HERE>"
}

variable "fingerprint" {
  type    = string
  default = "<SSH KEY FINGERPRINT HERE>"
}

variable "private_key_path" {
  type    = string
  default = "<SSH PRIVATE KEY FULL PATH HERE>"
}

variable "region" {
  type    = string
  default = "<OCI TENANCY REGION HERE eg: us-phoenix-1 or us-ashburn-1>"
}

#################################
#
# Variables according to Services
# PLEASE DO NOT MODIFY
#
#################################

##########################
## Fetch Compartments ####
##########################

variable "compartment_ocids" {
  type = map(any)
  default = {
    	#START_compartment_ocids#
	root = "ocid1.tenancy.oc1..aaaaaaaa5ob2e73i4bavdqrbrch25odbfbdbfbbcuxiies2dgpwdinmrmel3a"
	Security = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhdhdfdf6nubepnm6j3wsllkhxf4xsdfdf"
	Network = "ocid1.compartment.oc1..aaaaaaaa5tx27cqohsryhsddddfdf6nubepnm6j3wsllkhxf4xjl4hoa"
	#compartment_ocids_END#
  }
}

#########################
## Management Services ##
#########################
variable "alarms" {
  type = map(object({
    compartment_id                                = string
    destinations                                  = list(string)
    alarm_name                                    = string
    is_enabled                                    = bool
    metric_compartment_id                         = string
    namespace                                     = string
    query                                         = string
    severity                                      = string
    body                                          = optional(string)
    message_format                                = optional(string)
    defined_tags                                  = optional(map(any))
    freeform_tags                                 = optional(map(any))
    is_notifications_per_metric_dimension_enabled = optional(bool)
    metric_compartment_id_in_subtree              = optional(string)
    trigger_delay_minutes                         = optional(string)
    repeat_notification_duration                  = optional(string)
    resolution                                    = optional(string)
    resource_group                                = optional(string)
    suppression                                   = optional(map(any))
  }))
  default = {}
}

variable "events" {
  type = map(object({
    event_name     = string
    compartment_id = string
    description    = string
    is_enabled     = bool
    condition      = string
    actions = optional(list(object({
      action_type = string
      is_enabled  = string
      description = optional(string)
      function_id = optional(string)
      stream_id   = optional(string)
      topic_id    = optional(string)
    })))
    message_format = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "notifications_topics" {
  type = map(object({
    compartment_id = string
    topic_name     = string
    description    = optional(string)
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "notifications_subscriptions" {
  type = map(object({
    compartment_id = string
    endpoint       = string
    protocol       = string
    topic_id       = string
    defined_tags   = optional(map(any))
    freeform_tags  = optional(map(any))
  }))
  default = {}
}

variable "service_connectors" {
  type        = any
  default     = {}
  description = "To provision service connector hub resources"
}
