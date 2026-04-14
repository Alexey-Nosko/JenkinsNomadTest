job "spring-app" {
  datacenters = ["dc1"]

  group "app" {
    task "spring" {
      driver = "raw_exec"

      config {
        command = "java"
        args    = ["-jar", "app.jar"]
      }
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