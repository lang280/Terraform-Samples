# resource "google_service_account" "default" {
#   account_id   = "my-custom-sa"
#   display_name = "Custom SA for VM Instance"
# }

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  # Network tags
  # tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.system_image
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  # Custom metadata
  # metadata = {
  #   foo1 = "bar1"
  # }

  # 启动时执行的脚本
  # metadata_startup_script = "echo hi > /test.txt"

}