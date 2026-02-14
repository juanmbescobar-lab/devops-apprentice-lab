# Contributing Guide (Solo-Developer, Pro Workflow)

Even as a solo learner, we work like a professional team. (Thank you chatGPT/Claude for being my teacher)

## Branching
- `main`: always deployable, stable history.
- Create branches from `main`:
  - `feat/<short-name>`  : new features
  - `fix/<short-name>`   : bug fixes
  - `docs/<short-name>`  : documentation
  - `chore/<short-name>` : maintenance, tooling, refactors

## Commits (Conventional Commits)
Format:
`type: short summary`

Common types:
- `feat:` new feature
- `fix:` bug fix
- `docs:` documentation only
- `chore:` tooling / maintenance
- `test:` tests only
- `ci:` CI/CD related changes


## Pull Requests (even solo)
- Every branch goes through a PR to `main`.
- PR must explain:
  - what changed
  - why it changed
  - how to test/verify
  - risks + rollback (when relevant)
