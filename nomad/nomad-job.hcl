job "spring-app" {
  datacenters = ["dc1"]

  group "app" {
    task "spring" {
      driver = "docker"

      config {
        image = "host.docker.internal:5000/spring-app:latest"
        ports = ["http"]
      }

      resources {
        network {
          port "http" {
            static = 8080
          }
        }
      }
    }
  }
}