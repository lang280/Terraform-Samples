resource "google_storage_bucket" "default" {
  name          = var.bucket_name
  location      = var.bucket_location

  # 允许删除非空存储桶
  force_destroy = var.force_destroy

  # 启用存储桶级别访问控制, 而不是对象ACL
  uniform_bucket_level_access = var.uniform_bucket_level_access

#  静态网站托管
#   website {
#     main_page_suffix = "index.html"
#     not_found_page   = "404.html"
#   }
  
#   # 跨域资源共享 (CORS, Cross-Origin Resource Sharing) 规则
#   cors {
#     origin          = ["http://image-store.com"]
#     method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
#     response_header = ["*"]
#     max_age_seconds = 3600
#   }
}