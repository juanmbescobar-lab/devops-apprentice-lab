group "default" {
  targets = ["api", "worker"]
}

target "api" {
  context = "./apps/api"
  dockerfile = "./apps/api/Dockerfile"
  tags = ["devops-apprentice-lab-api:ci"]
}

target "worker" {
  context = "./apps/worker"
  dockerfile = "./apps/worker/Dockerfile"
  tags = ["devops-apprentice-lab-worker:ci"]
}
