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

⚠️ Considered **legacy**, checkout our new [GitHub actions](https://github.com/SocialGouv/actions/) ⚠️


## Usage

Use like this in your `.gitlab-ci.yml` :

```yml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_semantic_release_stage.yml
    ref: v23.3.4
  - project: SocialGouv/gitlab-ci-yml
    file: /base_register_stage.yml
    ref: v23.3.4
```

<br>
<br>
<br>
<br>

# [.autodevops](./autodevops.yml)

Standard @socialgouv pipeline using [@socialgouv/kosko-charts](https://github.com/SocialGouv/kosko-charts) for deployment.

This pipeline produces :

- review deployments on branches
- preprod deployments on tags
- production deployment when `PRODUCTION` env var is set.

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4
```

### Deploy

| Name       | Ref                         | URL                                                                 | Cluster |
| ---------- | --------------------------- | ------------------------------------------------------------------- | ------- |
| Reviews    | Branches                    | `https://<branch_sha>-<project_name>.dev2.fabrique.social.gouv.fr/` | `*-dev` |
| Preprod    | Tags                        | `https://preprod-<project_name>.dev2.fabrique.social.gouv.fr/`      | `*-dev` |
| Production | Tags with `$PRODUCTION` set | `https://<project_name>.prod2.fabrique.social.gouv.fr/`             | `prod`  |

You can change the cluster target by setting one of the `AUTO_DEVOPS_*_ENVIRONMENT_NAME` variable.  
Changing the cluster target will automatically alter the domaine as the url is following the [`$KUBE_INGRESS_BASE_DOMAIN` GitLab variable](https://docs.gitlab.com/ee/topics/autodevops/#auto-devops-base-domain).

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4

variables:
  AUTO_DEVOPS_DEV_ENVIRONMENT_NAME: "-tmp"
  AUTO_DEVOPS_PREPROD_ENVIRONMENT_NAME: "-tmp2"
  AUTO_DEVOPS_PROD_ENVIRONMENT_NAME: "fake"
```

### Auto Release

To automatically release changes on branches you can set the `AUTO_DEVOPS_RELEASE_AUTO`

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4

variables:
  AUTO_DEVOPS_RELEASE_AUTO: "🔖"
```

### Auto Ship To Production

To automatically deploy releases to production you can set the `AUTO_DEVOPS_PRODUCTION_AUTO` to the regex tag you wish to deploy

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4

variables:
  AUTO_DEVOPS_PRODUCTION_AUTO: "🚀"
  # Will deploy any stable release matching "/^v[0-9]+\\.[0-9]+\\.[0-9]+$/"
```

### Disable some jobs

You can disable test jobs with `AUTO_DEVOPS_TEST_DISABLED` and/or lint with `AUTO_DEVOPS_QUALITY_DISABLED`. `AUTO_DEVOPS_NOTIFY_DISABLED` disable GitHub environments notifications.

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4

variables:
  AUTO_DEVOPS_TEST_DISABLED: "🛑"
  AUTO_DEVOPS_QUALITY_DISABLED: "🛑"
  AUTO_DEVOPS_NOTIFY_DISABLED: "🛑"
```

### Register your image with Kaniko

You can use [Kaniko](https://github.com/GoogleContainerTools/kaniko) as container image builder by setting the `AUTO_DEVOPS_KANIKO`.

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4

variables:
  AUTO_DEVOPS_KANIKO: "🕹️"

Register Kaniko image:
  extends: .base_register_kaniko_stage
  variables:
    IMAGE_NAME: app

Register another image:
  extends: .base_register_kaniko_stage
  dependencies: []
  needs: []
  variables:
    DOCKER_BUILD_ARGS: >-
      --dockerfile=hasura/Dockerfile
    CONTEXT: hasura
    IMAGE_NAME: hasura
```

### Override existing jobs

All gitlab jobs are overridable. You can or extend them or completely replace them.
Autodevops jobs are using a `.autodevops_*` definition you can extend.

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /autodevops.yml
    ref: v23.3.4

# Same name as the "Build" job defined in the autodevops file
# Override https://github.com/SocialGouv/gitlab-ci-yml/blob/v17.0.0/autodevops.yml#L50
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

# Same name as the "Preprod" job defined in the autodevops file
# Override https://github.com/SocialGouv/gitlab-ci-yml/blob/v17.0.0/autodevops.yml#L137
Preprod:
  extends:
    - .autodevops_preprod
  variables:
    KOSKO_APPEND_YAML_FROM: .k8s/environments/dev

# Just skip the job
Register:
  rules:
    - when: never
```

As the gitlab yaml parser is working, defining a job **with the same name** will replace the last defined one. You can replace any autodevops jobs by naming it :

<br>
<br>
<br>
<br>

# [.base_create_namespace_stage](./base_create_namespace_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_kubectl_image_stage.yml
    ref: v23.3.4
  - project: SocialGouv/gitlab-ci-yml
    file: /base_create_namespace_stage.yml
    ref: v23.3.4

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

<br>
<br>
<br>
<br>

# [.base_delete_useless_k8s_ns_stage](./base_delete_useless_k8s_ns_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_delete_useless_k8s_ns_stage.yml
    ref: v23.3.4
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
    ref: v23.3.4
  - project: SocialGouv/gitlab-ci-yml
    file: /base_deploy_app_chart_stage.yml
    ref: v23.3.4

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
    ref: v23.3.4
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_helm_image_stage.yml
    ref: v23.3.4

#

Helm job:
  extends: .base_docker_helm_image_stage
  script:
    - helm version --client
```

# [.base_deploy_kosko_stage](./base_deploy_kosko_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_kubectl_image_stage.yml
    ref: v23.3.4
  - project: SocialGouv/gitlab-ci-yml
    file: /base_deploy_kosko_stage.yml
    ref: v23.3.4

#

Deploy:
  extends: .base_deploy_kosko_stage
  environment:
    name: prod2
  variables:
    KOSKO_GENERATE_ARGS: --env prod
```

### Options

if `AUTO_DEVOPS_ENABLE_KAPP` is set, then the deploy will use [kapp](https://github.com/vmware-tanzu/carvel-kapp) instead of `kubectl` to apply the manifests. This makes debugging easier with feedback directly in the GitLab job log.

For this to work, you need to add these annotations to your deployments :

```yaml
kapp.k14s.io/disable-default-ownership-label-rules: ""
kapp.k14s.io/disable-default-label-scoping-rules: ""
```

# [.base_docker_kubectl_image_stage](./base_docker_kubectl_image_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_docker_kubectl_image_stage.yml
    ref: v23.3.4
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
    ref: v23.3.4

Notify fail:
  extends: .base_notify_fail_mattermost
  variables:
    MATTERMOST_CHANNEL: notifications

Notify success:
  extends: .base_notify_success_mattermost
  variables:
    MATTERMOST_CHANNEL: notifications
```

# [.base_nuclei_scan](./base_nuclei_scan.yml)

A job to run a [nuclei](https://nuclei.projectdiscovery.io) security scan on the deployed environement.

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_nuclei_scan.yml
    ref: v23.3.4

Nuclei Scan:
  extends: .base_nuclei_scan
  environment:
    name: ${CI_COMMIT_REF_SLUG}-dev2
    url: https://${CI_ENVIRONMENT_SLUG}.${KUBE_INGRESS_BASE_DOMAIN}
  only:
    - branches
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
    ref: v23.3.4
```

# [.base_register_docker_stage](./base_register_docker_stage.yml)

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_register_docker_stage.yml
    ref: v23.3.4

Register myapp image:
  extends: .base_register_docker_stage
  # or .base_register_stage
  variables:
    CONTEXT: . # The folder where the Dockerfile is
    IMAGE_NAME: $CI_REGISTRY_IMAGE # The image name
    # optional
    DOCKER_BUILD_ARGS: "--build-arg SENTRY_DSN=https://sentry"
```

# [.base_register_kaniko_stage](./base_register_kaniko_stage.yml)

To use kaniko instead of docker build, import this stage **after** other includes

## Usage

```yaml
include:
  - project: SocialGouv/gitlab-ci-yml
    file: /base_register_kaniko_stage.yml
    ref: v23.3.4
    
Register myapp image:
  extends: .base_register_kaniko_stage
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
    ref: v23.3.4

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
    ref: v23.3.4

Trivy Scan:
  extends: .base_trivy_scan
```
