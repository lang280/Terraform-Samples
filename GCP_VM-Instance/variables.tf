/*
    这个文件定义了我们将要使用的变量
    */

/*
    下面这些变量定义了GCP项目的属性
    包括项目ID和服务账号的密钥文件
    */
variable "project_id" {
  type        = string
  description = "The project ID to deploy resources"
}

variable "credentials_json" {
  type        = string
  description = "The path to the service account key file"
  default     = "./terraform.json"
}

/*
    下面这些变量定义了GCP实例的属性
    包括实例名称、机器类型和区域
    */
variable "instance_name" {
  type        = string
  description = "Name of the instance"
  default = "default-instance-name"
}

variable "machine_type" {
  type        = string
  description = "Machine type of the instance"
  default = "e2-micro"
}

variable "zone" {
  type        = string
  description = "Zone of the instance"
  default = "us-central1-a"
}

variable "system_image" {
  type        = string
  description = "System image of the instance"
  default = "debian-cloud/debian-11"
}