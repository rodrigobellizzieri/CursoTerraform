module "web-server" {
  source = "./modules/web-server"

  name          = "web-dev"
  vpc_cidr     = "10.0.0.0/16"
  subnet_cidr  = "10.0.1.0/24"
  ami          = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  user_data = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Infra criada via módulo - Curso Terraform Rodrigo Bellizzieri</h1>" > /var/www/html/index.html
  EOF

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

