job "spring-app" {
  datacenters = ["dc1"]

  group "app" {

    network {
      port "http" {
        to = 9090
      }
    }

    task "spring" {
      driver = "docker"

      config {
        image = "localhost:5000/spring-app:latest"
        ports = ["http"]
      }

      resources {
        cpu    = 500
        memory = 512
      }
    }
  }
}