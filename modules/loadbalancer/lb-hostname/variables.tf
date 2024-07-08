// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Variable Block - Load Balancer
# Create Load Balancer Hostname
############################

variable "hostname" {
  type        = string
  description = "A virtual hostname for load balancer"
  default     = null
}

variable "load_balancer_id" {
  type        = string
  description = "The OCID of load balancer"
  default     = null
}

variable "name" {
  type        = string
  description = "Load Balancer Name"
  default     = null
}
