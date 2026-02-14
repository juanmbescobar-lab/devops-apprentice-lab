# PR Notes

## PR: Local Docker platform (api, worker, compose, make)

### What changed
- Added FastAPI API container with Dockerfile
- Added RQ worker container with Dockerfile
- Added local Docker Compose stack (postgres, redis, api, worker) with healthchecks
- Added Makefile commands to operate the stack

### Why
- Provide a production-style local platform to practice Docker/Compose operations
- Establish a repeatable developer experience (DX) via Make targets
- Prepare groundwork for CI/CD and security hardening

### How to verify
1. `make up`
2. `make ps`
3. `make health` (expect `{"status":"ok"}`)
4. `make logs` (optional)

### Risks
- `.env` is currently versioned for local-only learning; will be replaced by `.env.example` + secrets later
- Postgres Alpine may log locale warnings (non-blocking)

### Rollback plan
- Revert the merge commit that introduced the local platform changes
- Or run `make down -v` to reset local state
