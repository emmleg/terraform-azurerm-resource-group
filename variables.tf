variable "name" {
  description = "(Required) The Name which should be used for this Resource Group."
  type        = string
}

variable "location" {
  description = "(Required) The Azure Region where the Resource Group should exist."
  type        = string
}

variable "enable_module_tags" {
  description = "(Optional) Enable or not built-in mapping of tags which should be assigned to the Resource Group. Default to 'true'."
  type        = bool
  default     = true
}

variable "lock_level" {
  description = "(Optional) Specifies the Level to be used for this Lock if needed. Possible values are 'CanNotDelete' and 'ReadOnly'."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags which should be assigned to the Resource Group."
  type        = map(string)
  default     = {}
}


