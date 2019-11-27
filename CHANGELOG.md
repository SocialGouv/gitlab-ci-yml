# [2.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v2.1.0...v2.2.0) (2019-11-27)


### Features

* add delete useless k8s ns stage ([1d727b7](https://github.com/SocialGouv/gitlab-ci-yml/commit/1d727b799be492d842ee0d0b717955bd26741e63))

# [2.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v2.0.0...v2.1.0) (2019-11-25)


### Features

* **nodejs_chart:** update chart to socialgouv/nodejs[#2](https://github.com/SocialGouv/gitlab-ci-yml/issues/2).8.0 ([9e6ffa3](https://github.com/SocialGouv/gitlab-ci-yml/commit/9e6ffa39454e7b1f101890fdb9e70b579e3c2f69))

# [2.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.5.0...v2.0.0) (2019-11-24)


### Features

* **nodejs_chart:** empty HELM_RENDER_ARGS ([e335c1c](https://github.com/SocialGouv/gitlab-ci-yml/commit/e335c1c9f59f2868e2f34730800e87bf8fa1c5e0))


### BREAKING CHANGES

* **nodejs_chart:** **feat(nodejs_chart)**: empty HELM_RENDER_ARGS
  - No args are given by default (expect the `--values`)
    We recommend that in your project, you at least set :

    ```yaml
    .deploy_job:
      extends: .base_deploy_nodejs_chart_stage
      # [...]
      before_script:
        - *resolve_env_domain
        - HOST=${FRONTEND_HOST}
        - HELM_RENDER_ARGS="
            --set image.tag=${CI_COMMIT_SHA}
            --set ingress.hosts[0].host=${HOST}
            --set ingress.tls[0].hosts[0]=${HOST}"
        - |
          if [[ "${BRANCH_NAME}" = "master" ]]; then
            HELM_RENDER_ARGS="
              ${HELM_RENDER_ARGS}
              --set ingress.annotations."certmanager\.k8s\.io/cluster-issuer"=letsencrypt-prod
              --set ingress.annotations."kubernetes\.io/tls-acme"=true
              --set ingress.tls[0].secretName=${PROJECT}-certificate"
          fi
    ```

# [1.5.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.4.0...v1.5.0) (2019-11-24)


### Features

* **nodejs_chart:** HELM_RENDER_ARGS only define image.tag by default ([130fe3e](https://github.com/SocialGouv/gitlab-ci-yml/commit/130fe3e6d39f7f47114ed48e9b99ecd331ceee09))

# [1.4.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.3.1...v1.4.0) (2019-11-22)


### Features

* **nodejs_chart:** add HELM_RENDER_ARGS var ([1cdbdfc](https://github.com/SocialGouv/gitlab-ci-yml/commit/1cdbdfc1c88c03c80db94be9af39177f5933aec8))

## [1.3.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.3.0...v1.3.1) (2019-11-20)


### Bug Fixes

* **helm:** typo in kubectl extends name ([c069be4](https://github.com/SocialGouv/gitlab-ci-yml/commit/c069be43a3d41e8bf9ca35fbe73630df4289c75d))
* **nodejs_chart:** use HOST as variable ([4a81cc5](https://github.com/SocialGouv/gitlab-ci-yml/commit/4a81cc5c81f037f9ab7aee062ec65e916f4456d4))

# [1.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.2.2...v1.3.0) (2019-11-20)


### Features

* **nodejs_chart:** add deploy nodejs chart stage ([9015c78](https://github.com/SocialGouv/gitlab-ci-yml/commit/9015c786d79eccc822f4c19d28e5a5a2af9660ef))

## [1.2.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.2.1...v1.2.2) (2019-11-20)


### Bug Fixes

* **namespaces:** kubectl extends name typo ([c260843](https://github.com/SocialGouv/gitlab-ci-yml/commit/c2608436f2129a6e27600665f59dfd762b22d73c))

## [1.2.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.2.0...v1.2.1) (2019-11-20)


### Bug Fixes

* **namespaces:** run as script by default ([33cb5c9](https://github.com/SocialGouv/gitlab-ci-yml/commit/33cb5c91a3ed4d9b5bdeda1eca1413f94f1e9e3a))
* **release:** typo in base_semantic_release_stage filename ([d869361](https://github.com/SocialGouv/gitlab-ci-yml/commit/d869361483bcd80af2fbf7270ba5b6d4806eed60))
* **release:** typo in file name ([0365717](https://github.com/SocialGouv/gitlab-ci-yml/commit/03657179ae8e7009f385e7694d0b81ce5dd01bfe))

# [1.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.1.0...v1.2.0) (2019-11-20)


### Features

* **namespace:** add create namespace stage ([726023c](https://github.com/SocialGouv/gitlab-ci-yml/commit/726023cb8be5e3057ee6e330da3ec9cdabe11691))

# [1.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v1.0.0...v1.1.0) (2019-11-20)


### Features

* **release:** add SEMANTIC_RELEASE_ARGS variable ([23fbb9b](https://github.com/SocialGouv/gitlab-ci-yml/commit/23fbb9b597136e4bffe3e16f22fcdf1cadff2b07))

# 1.0.0 (2019-11-20)


### Bug Fixes

* use git-deploy fixed image ([cae3f68](https://github.com/SocialGouv/gitlab-ci-yml/commit/cae3f6833ee3670245edb8cd4a250c44954cd46f))
* **github-pr:**  use DEV_ENVIRONMENT_NAME ([90b9905](https://github.com/SocialGouv/gitlab-ci-yml/commit/90b9905f7daf9064cdbe933d8b271c1c471e7dba))


### Features

* add semantic release stage ([#4](https://github.com/SocialGouv/gitlab-ci-yml/issues/4)) ([66c2c28](https://github.com/SocialGouv/gitlab-ci-yml/commit/66c2c28b3af99ae6ae04a16dff2baeb5e898ddc6))
