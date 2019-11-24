<h1 align="center">
  <img src="https://github.com/SocialGouv/gitlab-ci-yml/raw/master/.github/gitlab.gif" width="250"/>
  <p align="center">.gitlab-ci.yml</p>
  <p align="center" style="font-size: 0.5em">✨✨✨✨✨✨✨✨</p>
</h1>

<p align="center">
  <a href="https://opensource.org/licenses/Apache-2.0"><img src="https://img.shields.io/badge/License-Apache--2.0-yellow.svg" alt="License: Apache-2.0"></a>
  <a href="https://github.com/SocialGouv/gitlab-ci-yml/releases "><img alt="GitHub release (latest SemVer)" src="https://img.shields.io/github/v/release/SocialGouv/gitlab-ci-yml?sort=semver"></a>
</p>

<br>
<br>
<br>
<br>

## Usage

Use like this in your `.gitlab-ci.yml` :

```yml
---
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/github-deployments.yml"
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/register-stage.yml"
```

## github-deployments-feature.yml

These jobs sends the feature-branch deployed environment url and status to GitHub API so it appears in the GitHub PR.

| Stage                        | usage                    |
| ---------------------------- | ------------------------ |
| Prepare                      | get github deployment id |
| Send Url to GitHub (feature) | send deployment url      |

| Env var              | example            |
| -------------------- | ------------------ |
| DEV_ENVIRONMENT_NAME | gitlab environment |

## register-stage.yml

An extend to build and publish some docker image.

`extends .base_register_stage`

| Stage        | usage                 |
| ------------ | --------------------- |
| Registration | register docker image |

| Env var           | example                               |
| ----------------- | ------------------------------------- |
| IMAGE_NAME        | cdtn/api                              |
| CONTEXT           | packages/api                          |
| DOCKER_BUILD_ARGS | --build-arg SENTRY_DSN=https://sentry |

# [.base_create_namespace_stage](./base_create_namespace_stage.yml)

## Usage 

```yaml
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_docker_kubectl_image_stage.yml"
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_create_namespace_stage.yml"
  # or
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_docker_kubectl_image_stage.yml"
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_create_namespace_stage.yml"

#

Create namespace:
  extends: .base_create_namespace_stage
  variables:
    # The rancher project where the namespaces will be created
    RANCHER_PROJECT_ID: <rancher_project_id>
  before_script:
    - K8S_NAMESPACE=my-namespace
    # (re)create to ensure a new namespaces will be created
    # - kubectl delete namespaces ${K8S_NAMESPACE} || true
  
```

# [.base_deploy_nodejs_chart_stage](./base_deploy_nodejs_chart_stage.yml)

## Usage

```yaml
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_deploy_nodejs_chart_stage.yml"
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_docker_helm_image_stage.yml"
  # or
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_deploy_nodejs_chart_stage.yml"
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_docker_helm_image_stage.yml"

#


.deploy_myapp_stage: &deploy_myapp_stage
  dependencies: []
  stage: Deploy
  extends: .base_deploy_nodejs_chart_stage
  variables:
    CONTEXT: app
    VALUES_FILE: ./.k8s/app.values.yml
  before_script:
    - K8S_NAMESPACE=my-namespace
    - HOST=myapp.dev.factory.social.gouv.fr
    - HELM_RENDER_ARGS="
      --set ingress.hosts[0].host=${HOST}
      --set ingress.tls[0].hosts[0]=${HOST}
      ${HELM_RENDER_ARGS}"

    # In production
    # - HELM_RENDER_ARGS="
    #   --set ingress.annotations."certmanager\.k8s\.io/cluster-issuer"=letsencrypt-prod
    #   --set ingress.annotations."kubernetes\.io/tls-acme"=true
    #   --set ingress.tls[0].secretName=${PROJECT}-certificate
    #   ${HELM_RENDER_ARGS}"

#

Deploy myapp (dev):
  <<: *deploy_myapp_stage
  only:
    - branches
  except:
    - master
  environment:
    name: $DEV_ENVIRONMENT_NAME

Deploy myapp (prod):
  <<: *deploy_myapp_stage
  only:
    - master
  environment:
    name: $PROD_ENVIRONMENT_NAME
```

# [.base_docker_helm_image_stage](./base_docker_helm_image_stage.yml)

## Usage 

```yaml
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_docker_kubectl_image_stage.yml"
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_docker_helm_image_stage.yml"
  # or
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_docker_kubectl_image_stage.yml"
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_docker_helm_image_stage.yml"

#

Helm job:
  extends: .base_docker_helm_image_stage
  script:
    - helm version --client-only
```

# [.base_docker_kubectl_image_stage](./base_docker_kubectl_image_stage.yml)

## Usage 

```yaml
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_docker_kubectl_image_stage.yml"
  # or
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_docker_kubectl_image_stage.yml"

#

Kubectl job:
  extends: .base_docker_kubectl_image_stage
  script:
    - kubectl version --client 
```

# [.base_semantic_release_stage](./base_semantic_release_stage.yml)

## Usage 

```yaml
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_semantic_release_stage.yml"
  # or
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_semantic_release_stage.yml"

#

Release:
  extends: .base_semantic_release_stage

# or

Release:
  extends: .base_semantic_release_stage
  variables:
    SEMANTIC_RELEASE_PLUGINS: "@semantic-release/changelog @semantic-release/git"
  
```
