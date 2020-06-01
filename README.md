<h1 align="center">
  <img src="https://github.com/SocialGouv/gitlab-ci-yml/raw/master/.github/gitlab.gif" width="250"/>
  <p align="center">.gitlab-ci.yml</p>
  <p align="center" style="font-size: 0.5em">✨✨✨✨✨✨✨✨</p>
</h1>

<p align="center">
  <a href="https://opensource.org/licenses/Apache-2.0"><img src="https://img.shields.io/badge/License-Apache--2.0-yellow.svg" alt="License: Apache-2.0"></a>
  <a href="https://github.com/SocialGouv/gitlab-ci-yml/releases "><img alt="GitHub release (latest SemVer)" src="https://img.shields.io/github/v/release/SocialGouv/gitlab-ci-yml?sort=semver"></a>
  <a href="https://gitlab.factory.social.gouv.fr/SocialGouv/gitlab-ci-yml/commits/master"><img alt="Gitlab Pipeline Status" src="https://gitlab.factory.social.gouv.fr/SocialGouv/gitlab-ci-yml/badges/master/pipeline.svg"></a>
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

# [.autodevops_simple_app](./autodevops_simple_app.yml)

Standard @socialgouv pipeline using [@socialgouv/helm-charts/app](https://github.com/SocialGouv/helm-charts/blob/master/charts/app) for deployment.

This pipeline produces review deployments on branches and production deployment when you merge on master.

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops_simple_app.yml
    ref: v17.0.0-beta.3

variables:
  PROJECT: "sample-next-app"
  RANCHER_PROJECT_ID: "c-gsm8d:p-pwpk6" # "default" project id here
  PORT: 8080
  VALUES_FILE: ./.k8s/app.values.yml # Your values
  ENABLE_AZURE_POSTGRES: 1
```

Customize `app.values.yml` with the [default helm chart values.yml](https://github.com/SocialGouv/helm-charts/blob/master/charts/app/values.yaml).

You can also set these in gitlab-ci.yml `variables` :

| var                   | usage                                                                                                |
| --------------------- | ---------------------------------------------------------------------------------------------------- |
| ENABLE_AZURE_DB       | enable Azure PG database using [azure-db](https://github.com/SocialGouv/docker/tree/master/azure-db) |
| TEST_DISABLED         | disable test job                                                                                     |
| CODE_QUALITY_DISABLED | disable lint job                                                                                     |
| NOTIFY_DISABLED       | disable GitHub environment notifications                                                             |

If you `ENABLE_AZURE_DB`, you need a secret `azure-pg-admin-user` in your cluster namespace `[app.name]-secret`

Disabling test and lint is for debugging purposes

### Override existing jobs

All gitlab jobs are overridable. You can or extend them or completely replace them.

#### Extends existing job

All autodevops jobs are using a `.autodevops_*` definition you can extend.

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops_simple_app.yml
    ref: v17.0.0-beta.3

variables:
  PORT: 8080
  VALUES_FILE: ./.k8s.app.values.yml

# Same name as the "Build" job defined in the autodevops_simple_app file
# Override https://github.com/SocialGouv/gitlab-ci-yml/blob/v14.0.0/autodevops_simple_app.yml#L50
Build:
  extends:
    - .autodevops_build
  script:
    - yarn build
    - yarn export
  artifacts:
    expire_in: 1 day
    paths:
      - out

# Same name as the "Deploy app (prod)" job defined in the autodevops_simple_app file
# Override https://github.com/SocialGouv/gitlab-ci-yml/blob/v14.0.0/autodevops_simple_app.yml#L137
Deploy app (prod):
  extends:
    - .autodevops_deploy_app_prod
  before_script:
    - envsubst < ./.k8s.app.values.prod.yaml > /tmp/values.prod.yaml
  variables:
    HELM_RENDER_ARGS: >-
      --values /tmp/values.prod.yaml
```

#### Replace existing job

As the gitlab yaml parser is working, defining a job **with the same name** will replace the last defined one. You can replace any autodevops jobs by naming it :

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops_simple_app.yml
    ref: v17.0.0-beta.3

variables:
  PORT: 8080
  VALUES_FILE: ./.k8s.app.values.yml

# Same name as the "Build" job defined in the autodevops_simple_app file
# Override https://github.com/SocialGouv/gitlab-ci-yml/blob/v14.0.0/autodevops_simple_app.yml#L50
Build:
  extends:
    - .base_yarn_build_next
  dependencies:
    - Install
  needs:
    - Install
  variables:
    VERSION: ${CI_COMMIT_SHORT_SHA}
    MY_API_URL: "%%MY_API_URL%%"
  script:
    - yarn build
    - yarn export
  artifacts:
    expire_in: 1 day
    paths:
      - out
```

# [.base_create_namespace_stage](./base_create_namespace_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_kubectl_image_stage.yml
    ref: v17.0.0-beta.3
  - project: SocialGouv/gitlab-ci-yml
    file: /base_create_namespace_stage.yml
    ref: v17.0.0-beta.3

#

Create namespace:
  extends: .base_create_namespace_stage
  variables:
    # The rancher project where the namespaces will be created
    RANCHER_PROJECT_ID: <rancher_project_id>
    # Optional
    REMOTE_URL: "https://github.com/${CI_PROJECT_PATH}.git"
  before_script:
    - K8S_NAMESPACE=my-namespace
    # (re)create to ensure a new namespaces will be created
    # - kubectl delete namespaces ${K8S_NAMESPACE} || true
```

# [.base_delete_useless_k8s_ns_stage](./base_delete_useless_k8s_ns_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_delete_useless_k8s_ns_stage.yml
    ref: v17.0.0-beta.3
#

Delete useless k8s namespaces:
  extends: .base_delete_useless_k8s_ns_stage
  variables:
    # Optional
    # Filter the namespaces to check for suppression
    K8S_NAMESPACE_PREFIX: "${PROJECT}-${CI_PROJECT_ID}-review"
```

# [.base_deploy_app_chart_stage](./base_deploy_app_chart_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_helm_image_stage.yml
    ref: v17.0.0-beta.3
  - project: SocialGouv/gitlab-ci-yml
    file: /base_deploy_app_chart_stage.yml
    ref: v17.0.0-beta.3

#

.deploy_myapp_stage:
  dependencies: []
  stage: Deploy
  extends:
    - .base_deploy_app_chart_stage
  variables:
    CONTEXT: app
    VALUES_FILE: ./.k8s/app.values.yml
    # optional
    HELM_RENDER_ARGS: "--set deployment.port 8080"

#

Deploy myapp (dev):
  extends:
    - .deploy_myapp_stage
  except:
    - master
  variables:
    HOST: ${CI_ENVIRONMENT_SLUG}-${CI_PROJECT_NAME}.${KUBE_INGRESS_BASE_DOMAIN}
  environment:
    name: ${CI_COMMIT_REF_NAME}-dev
    url: https://${CI_ENVIRONMENT_SLUG}-${CI_PROJECT_NAME}.${KUBE_INGRESS_BASE_DOMAIN}

Deploy app (prod):
  extends:
    - .deploy_myapp_stage
  only:
    - master
  variables:
    HOST: ${CI_PROJECT_NAME}.${KUBE_INGRESS_BASE_DOMAIN}
    K8S_NAMESPACE: ${CI_PROJECT_NAME}
    PRODUCTION: "true"
  environment:
    name: prod
    url: https://${CI_PROJECT_NAME}.${KUBE_INGRESS_BASE_DOMAIN}
```

# [.base_docker_helm_image_stage](./base_docker_helm_image_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_kubectl_image_stage.yml
    ref: v17.0.0-beta.3
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_helm_image_stage.yml
    ref: v17.0.0-beta.3

#

Helm job:
  extends: .base_docker_helm_image_stage
  script:
    - helm version --client
```

# [.base_docker_kubectl_image_stage](./base_docker_kubectl_image_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_kubectl_image_stage.yml
    ref: v17.0.0-beta.3
#

Kubectl job:
  extends: .base_docker_kubectl_image_stage
  script:
    - kubectl version --client
```

# [.base_notify_mattermost](./base_notify_mattermost.yml)

Send a mattermost notification on pipeline success/failure

You'll need a `MATTERMOST_WEBHOOK` variable in your CI.

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_notify_mattermost.yml
    ref: v17.0.0-beta.3

Notify fail:
  extends: .base_notify_fail_mattermost
  variables:
    MATTERMOST_CHANNEL: notifications

Notify success:
  extends: .base_notify_success_mattermost
  variables:
    MATTERMOST_CHANNEL: notifications
```

# [.base_migrate_azure_db](./base_migrate_azure_db.yml)

This will run the two following scripts for feature-branches deployments :

- yarn run migrate:latest
- yarn run seed:run

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_migrate_azure_db.yml
    ref: v17.0.0-beta.3
```

# [.base_register_stage](./base_register_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_register_stage.yml
    ref: v17.0.0-beta.3

Register myapp image:
  extends: .base_register_stage
  variables:
    CONTEXT: . # The folder where the Dockerfile is
    IMAGE_NAME: $CI_REGISTRY_IMAGE # The image name
    # optional
    DOCKER_BUILD_ARGS: "--build-arg SENTRY_DSN=https://sentry"
```

# [.base_semantic_release_stage](./base_semantic_release_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_semantic_release_stage.yml
    ref: v17.0.0-beta.3

#

Release:
  extends: .base_semantic_release_stage

# or

Release:
  extends: .base_semantic_release_stage
  variables:
    SEMANTIC_RELEASE_PLUGINS: "@semantic-release/changelog @semantic-release/git"

```

# [.base_trivy_scan](./base_trivy_scan.yml)

A manual job to run a [trivy](https://github.com/aquasecurity/trivy) security scan on the main repo docker image.

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_trivy_scan.yml
    ref: v17.0.0-beta.3

Trivy Scan:
  extends: .base_trivy_scan
```
