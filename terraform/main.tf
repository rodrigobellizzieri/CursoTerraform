# module "web-server-nginx" {
#   source = "./modules/web-server"

#   name          = "web-dev"
#   vpc_cidr     = "10.0.0.0/16"
#   subnet_cidr  = "10.0.1.0/24"
#   ami          = data.aws_ami.ubuntu.id
#   instance_type = "t3.micro"

#   user_data = <<-EOF
#     #!/bin/bash
#     apt-get update
#     apt-get install -y nginx
#     systemctl start nginx
#     systemctl enable nginx
#     echo "<h1>Infra criada via módulo - Curso Terraform Rodrigo Bellizzieri</h1>" > /var/www/index.html
#   EOF

#   tags = {
#     Environment = "dev"
#     ManagedBy   = "Terraform"
#   }
# }

