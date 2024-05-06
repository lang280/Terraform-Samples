# 使用terraform部署gcp vm instance
## 准备步骤
* Install Terraform on your local machine
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```
* Generate Credentials.json file or reuse existing one  
IAM与管理员 -> 服务账号 -> 添加密钥
* Update the path to the credential in ```terraform.tfvars```

## terraform命令
```
# 显示plan修改内容
terraform plan
# 应用plan, 创建instance
terraform apply
# 删除instance
terraform destroy
# 显示输出
terraform output
```