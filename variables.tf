# ----------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ----------------------------------------------------------------------------------------------------------------------

variable "name_suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
}

# ----------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ----------------------------------------------------------------------------------------------------------------------

variable "vpc_description" {
  description = "The description of the VPC Network."
  type        = string
  default     = "Generated by Terraform"
}

variable "public_subnet_description" {
  description = "The description of the public subnet."
  type        = string
  default     = "Generated by Terraform for public use"
}

variable "private_subnet_description" {
  description = "The description of the private subnet."
  type        = string
  default     = "Generated by Terraform for private use"
}

variable "vpc_routing_mode" {
  description = "Routing mode of the VPC. A 'GLOBAL' routing mode can have adverse impacts on load balancers. Prefer 'REGIONAL'."
  type        = string
  default     = "REGIONAL"
}

variable "vpc_timeout" {
  description = "how long a VPC operation is allowed to take before being considered a failure."
  type        = string
  default     = "5m"
}

variable "subnet_timeout" {
  description = "how long a subnet operation is allowed to take before being considered a failure."
  type        = string
  default     = "10m"
}

variable "router_timeout" {
  description = "how long a Cloud Router operation is allowed to take before being considered a failure."
  type        = string
  default     = "5m"
}

variable "nat_timeout" {
  description = "how long a Cloud NAT operation is allowed to take before being considered a failure."
  type        = string
  default     = "10m"
}
