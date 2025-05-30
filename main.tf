terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "devops_container" {
  name  = "devops-terraform-container"
  image = docker_image.nginx.image_id
  ports {
    internal = 80
    external = 8080
  }
}
