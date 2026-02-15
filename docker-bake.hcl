variable "ROOT" {
  default = "."
}

group "default" {
  targets = ["api", "worker"]
}

target "api" {
  context    = "${ROOT}"
  dockerfile = "apps/api/Dockerfile"
  tags       = ["devops-apprentice-lab-api:ci"]
}

target "worker" {
  context    = "${ROOT}"
  dockerfile = "apps/worker/Dockerfile"
  tags       = ["devops-apprentice-lab-worker:ci"]
}
