job "spring-app" {

  datacenters = ["dc1"]

  group "app" {

    count = 1

    network {
      port "http" {
        to = 8080
      }
    }

    task "spring" {
      driver = "docker"

      config {
        image = "localhost:5000/spring-app:1.0"
        ports = ["http"]
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}