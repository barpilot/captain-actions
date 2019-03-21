# captain-action
GitHub action for captain

## Usage

```
workflow "Build, Test, and Push" {
  on = "push"
  resolves = ["Push"]
}

action "Build" {
  uses = "barpilot/captain-actions@master"
  args = "build"
}

action "Test" {
  needs = "Build"
  uses = "barpilot/captain-actions@master"
  args = "test"
}

action "Docker Registry" {
  uses = "actions/docker/login@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "Push" {
  needs = ["Test", Docker Registry]
  uses = "barpilot/captain-actions@master"
  args = "push"
}
```
