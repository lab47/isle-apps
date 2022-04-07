root {
  oci = "docker:dind"
}

advertise {
  run "docker.sock" { }

  path "docker" {
    path = "/usr/local/bin/docker"
    into = "bin"
  }
}

service "docker" {
  command = ["dockerd"]
}
