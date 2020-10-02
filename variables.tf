variable "container_group_name" {
  type        = string
  default     = "myContGroup"
  description = "The name of the container group"
}

variable "resource_group_name" {
  type        = string
  default     = "MyContGroup-RG01"
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  default     = "westus"
  description = "Azure location"
}

variable "dns_name_label" {
  type        = string
  description = "The DNS label/name for the container groups IP"
}

variable "os_type" {
  type        = string
  description = "The OS for the container group. Allowed values are Linux and Windows"
}

variable "container_name" {
  type        = string
  default     = "mycont01"
  description = "The name of the container"
}

variable "image_name" {
  type        = string
  description = "The container image name"
}

variable "cpu_core_number" {
  type        = number
  default     = 0.5
  description = "The required number of CPU cores of the containers"
}

variable "memory_size" {
  type        = number
  default     = 1.5
  description = "The required memory of the containers in GB"
}

variable "port_number" {
  type        = number
  default     = 80
  description = "A public port for the container"
}
