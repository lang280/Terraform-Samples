# project variables
variable "project_id" {
  type        = string
  description = "The project ID"
}

variable "credentials_json" {
  type        = string
  description = "The path to the credentials JSON file"
}

# cluster variables
variable "cluster_name" {
  type        = string
  description = "The name of the cluster"
  default = "default-dataproc-cluster1"
}

variable "region" {
  type        = string
  description = "The region of the cluster"
  default = "us-central1"
}