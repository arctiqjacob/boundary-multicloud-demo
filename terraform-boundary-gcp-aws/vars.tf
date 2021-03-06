variable "gcp_project" {
  type        = string
  description = "The project ID to host the compute nodes in (required)"
}

variable "gcp_region" {
  type        = string
  description = "The region to deploy the compute nodes in"
  default     = "us-east1"
}

variable "aws_region" {
  type        = string
  description = "The region to deploy the compute nodes in"
  default     = "us-east-1"
}

variable "zone" {
  type        = list(string)
  description = "The zones to deploy the compute nodes in"
  default     = ["b", "c", "d"]
}

variable "gcp_machine_type" {
  type        = string
  description = "The machine type to use for the compute nodes"
  default     = "n1-standard-1"
}

variable "aws_machine_type" {
  type        = string
  description = "The machine type to use for the compute nodes"
  default     = "t2.medium"
}

variable "gcp_network" {
  type        = string
  description = "The machine type to use for the compute nodes"
  default     = "default"
}

variable "aws_vpc_id" {
  type        = string
  description = "The machine type to use for the compute nodes (required)"
}

variable "tags" {
  type        = list(string)
  description = "The tags to attach to the compute nodes"
  default     = ["boundary"]
}

variable "service_account_scopes" {
  type        = list(string)
  description = "The service account scopes to attach to the compute nodes"
  default     = ["compute-ro", "cloud-platform"]
}

variable "operating_system" {
  type        = string
  description = "Operating system to use for the compute nodes"
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "boundary_controller_count" {
  type        = number
  description = "The number of Boundary Controller instances to provision"
  default     = 1
}

variable "boundary_worker_count" {
  type        = number
  description = "The number of Boundary Workers instances to provision"
  default     = 1
}

variable "postgresql_version" {
  type        = string
  description = "The PostgreSQL version to use"
  default     = "POSTGRES_12"
}

variable "postgresql_tier" {
  type        = string
  description = "The machine type to use for the PostgreSQL instance"
  default     = "db-f1-micro"
}