# GitLab Zerops Recipe

## Quick Install

```yaml
#yamlPreprocessor=on
project:
  name: gitlab-example
  tags:
    - gitlab
services:
  - hostname: db
    priority: 10
    type: postgresql@12
    mode: NON_HA
  - hostname: gitlab
    priority: 5
    type: ubuntu@22.04
    envVariables:
      GITLAB_ROOT_PASSWORD: <@generateRandomString(<12>)>
    minContainers: 1
    maxContainers: 1
    verticalAutoscaling:
      minVCpu: 20
      minRam: 6
      minDisk: 5
    ports:
      - port: 80
        httpSupport: true
    enableSubdomainAccess: true
    buildFromGit: https://github.com/zeropsio/recipe-gitlab
```
