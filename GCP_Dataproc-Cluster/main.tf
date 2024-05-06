resource "google_dataproc_cluster" "default" {
  name   = var.cluster_name
  region = var.region

  cluster_config {
    # 允许Component Gateway(可以直接网页访问)
    endpoint_config {
      enable_http_port_access = "true"
    }
  }
}