terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "app" {
  name = "pin-proyecto-1"
  build {
    context = "."
  }
}

resource "docker_container" "app" {
  name  = "pin_app"
  image = docker_image.app.name

  ports {
    internal = 3000
    external = 3000
  }
}