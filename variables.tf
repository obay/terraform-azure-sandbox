variable "location" {
  type        = string
  description = "Sandbox resources location"
}

variable "EnvironmentName" {
  type        = string
  description = "Environment name can be Production, Development, Test, etc."
}

variable "ProjectName" {
  type        = string
  description = "Project name can be your project name or your company name"
}

variable "AdminUsername" {
  type        = string
  description = "Admin username for all VMs"
}

variable "AdminPassword" {
  type        = string
  description = "Admin password for all VMs"
}