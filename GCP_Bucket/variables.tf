# project variables
variable "project_id" {
  type        = string
  description = "The project ID"
}

variable "credentials_json" {
  type        = string
  description = "The path to the credentials JSON file"
}

# bucket variables
variable "bucket_name" {
  type        = string
  description = "The name of the bucket"
  default = "default-bucket1"
}

variable "bucket_location" {
  type        = string
  description = "The location of the bucket"
  default = "US"
}

variable "force_destroy" {
  type        = bool
  description = "Allow the deletion of non-empty buckets"
  default = true
}

variable "uniform_bucket_level_access" {
  type        = bool
  description = "Enable bucket-level access control"
  default = true
}