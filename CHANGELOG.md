# [13.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v13.0.0...v13.1.0) (2020-04-07)


### Features

* **azure-db:** add pgcrypto ([#119](https://github.com/SocialGouv/gitlab-ci-yml/issues/119)) ([fc07f72](https://github.com/SocialGouv/gitlab-ci-yml/commit/fc07f726e567aba69d8d28d4006d1c3735b3b05c))

# [13.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v12.0.0...v13.0.0) (2020-04-07)


### Bug Fixes

* **deploy-app:** move HELM_RENDER_ARGS at end of the render cmd ([#123](https://github.com/SocialGouv/gitlab-ci-yml/issues/123)) ([004ce05](https://github.com/SocialGouv/gitlab-ci-yml/commit/004ce0514eed42af790e636e5b0332f58b9bc676))


* feat(deploy-app)!: force set certificate from $CONTEXT (#122) ([0b402dd](https://github.com/SocialGouv/gitlab-ci-yml/commit/0b402dd30f0f88331f46187003a4d111ada0143a)), closes [#122](https://github.com/SocialGouv/gitlab-ci-yml/issues/122)


### BREAKING CHANGES

* force set certificate from $CONTEXT  
    Might break existing certificates in production !

# [12.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v11.1.0...v12.0.0) (2020-04-06)


* feat(deps)!: update socialgouv/app github release tag to v6.0.0 (#120) ([90cfd3c](https://github.com/SocialGouv/gitlab-ci-yml/commit/90cfd3c73c12fb7f5640233879a7c373a7ad3e63)), closes [#120](https://github.com/SocialGouv/gitlab-ci-yml/issues/120)


### BREAKING CHANGES

* **Update socialgouv/app github release tag to v6.0.0**

    A `PORT` variable is now required

    Before

    ```yaml
    Deploy myapp:
      extends:
        - .base_deploy_app_chart_stage
      variables:
        CONTEXT: app
        VALUES_FILE: ./.k8s/app.values.yml
    ```

    After

    ```yaml
    Deploy myapp:
      extends:
        - .base_deploy_app_chart_stage
      variables:
        PORT: 8080
        CONTEXT: app
        VALUES_FILE: ./.k8s/app.values.yml
    ```

see https://github.com/SocialGouv/helm-charts/releases/tag/v6.0.0

# [11.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v11.0.0...v11.1.0) (2020-04-04)


### Features

* add NOTIFY_DISABLED variable ([#118](https://github.com/SocialGouv/gitlab-ci-yml/issues/118)) ([35f1e98](https://github.com/SocialGouv/gitlab-ci-yml/commit/35f1e98a373333462e3f494efe79a8ad48a23dab))

# [11.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v10.0.0...v11.0.0) (2020-04-02)


* feat(autodevops)!: use .base_deploy_app_chart_stage (#117) ([05fb547](https://github.com/SocialGouv/gitlab-ci-yml/commit/05fb5475663aa6830bbcaaedb0de62c9df4db277)), closes [#117](https://github.com/SocialGouv/gitlab-ci-yml/issues/117)
* feat(deploy)!: introduce new deploy app chart (#116) ([981167a](https://github.com/SocialGouv/gitlab-ci-yml/commit/981167a98f6c6d446513fa37386799ef822ed555)), closes [#116](https://github.com/SocialGouv/gitlab-ci-yml/issues/116)


### Features

* **autodevops:** make lint and test jobs optional ([#112](https://github.com/SocialGouv/gitlab-ci-yml/issues/112)) ([c7dcc7b](https://github.com/SocialGouv/gitlab-ci-yml/commit/c7dcc7b714609d7521638cb92c10f58982c2ed7a))


### BREAKING CHANGES

* **autodevops**: use .base_deploy_app_chart_stage
    - We are now using the fusion of the hpa and nodejs chart as in deployment. This new chart can drastically reduce what you need to put in your k8s values file. see https://github.com/SocialGouv/helm-charts/tree/v5.2.2/charts/app
* introduce new deploy app chart
    - We replaced `base_deploy_hpa_chart_stage` and `base_deploy_nodejs_chart_stage` by one `base_deploy_app_chart_stage`
    that does the same as both.
    - The `base_deploy_app_chart_stage` is using the new [socialgouv/app helm chart](https://github.com/SocialGouv/helm-charts/releases/tag/v5.0.0)
    - The `base_deploy_app_chart_stage` has a new [values.socialgouv.yaml](https://github.com/SocialGouv/helm-charts/blob/v5.0.0/charts/app/values.socialgouv.yaml)
    that provides some common SocialGouv production values.
    You can override them through the `HELM_RENDER_ARGS` env variable.

# [10.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v9.1.1...v10.0.0) (2020-03-25)


### Bug Fixes

* **yarn:** remove extra stage, image ([#108](https://github.com/SocialGouv/gitlab-ci-yml/issues/108)) ([2a567f5](https://github.com/SocialGouv/gitlab-ci-yml/commit/2a567f5f1de9e8795750b76d38d8d5471873c44e))


* feat(charts)!: update to socialgouv/helm-chats@4.0.1 (#101) ([368ce63](https://github.com/SocialGouv/gitlab-ci-yml/commit/368ce6305d61b66c39363c5fcfee32126a1d31ef)), closes [#101](https://github.com/SocialGouv/gitlab-ci-yml/issues/101) 
  - see https://github.com/SocialGouv/helm-charts/blob/master/CHANGELOG.md#400-2020-03-03


### BREAKING CHANGES

* update to socialgouv/helm-chats@4.0.1

## [9.1.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v9.1.0...v9.1.1) (2020-03-10)


### Bug Fixes

* **deps:** update registry.gitlab.factory.social.gouv.fr/social… ([#94](https://github.com/SocialGouv/gitlab-ci-yml/issues/94)) ([172eed8](https://github.com/SocialGouv/gitlab-ci-yml/commit/172eed8928521d9a5a059dbbf229f5c9b36e07e1))

# [9.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v9.0.0...v9.1.0) (2020-03-10)


### Features

* **autodevops:** aggresive install-build-register speed ([#85](https://github.com/SocialGouv/gitlab-ci-yml/issues/85)) ([d6e529c](https://github.com/SocialGouv/gitlab-ci-yml/commit/d6e529c4d62cc4372ac053b8d99bafdc309a0f26))
* **autodevops:** get pg admin cred from k8s secret ([#91](https://github.com/SocialGouv/gitlab-ci-yml/issues/91)) ([d0c1cc9](https://github.com/SocialGouv/gitlab-ci-yml/commit/d0c1cc9ae1aa244266094801fe215d9501a536d7))

# [9.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v8.0.0...v9.0.0) (2020-03-09)


* refactor(autodevops)!: move manual azure db migration to a separate base ([997333b](https://github.com/SocialGouv/gitlab-ci-yml/commit/997333bab3214e70c884c49801d0a4ed4e5f9574))


### BREAKING CHANGES

* move manual azure db migration to a separate base

    You now need to include the base migrate to have the `Migrate Azure DB (dev)` set

    ```yml
    include:
      - project: SocialGouv/gitlab-ci-yml
        file: /base_migrate_azure_db.yml
        ref: v8.0.0
    ```

# [8.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.3.3...v8.0.0) (2020-03-03)


### Bug Fixes

* **autodevops:** use extends ([cab8f37](https://github.com/SocialGouv/gitlab-ci-yml/commit/cab8f377525c7e73fe6c508ac30c30d2bd27b832))


* feat(autodevops)!: add PG deployment with ENABLE_AZURE_POSTGRES (#69) ([badff1e](https://github.com/SocialGouv/gitlab-ci-yml/commit/badff1ec7b9721bdae4558e600229ed0d3cded9a)), closes [#69](https://github.com/SocialGouv/gitlab-ci-yml/issues/69)


### BREAKING CHANGES

* add PG deployment with ENABLE_AZURE_POSTGRES
    - We can now add `ENABLE_AZURE_POSTGRES` to enable postgres deployment using [azure-db](https://github.com/SocialGouv/docker/tree/master/azure-db)

## [7.3.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.3.2...v7.3.3) (2020-02-25)


### Bug Fixes

* **delete:** update default namespace filter ([#57](https://github.com/SocialGouv/gitlab-ci-yml/issues/57)) ([e3dfd7a](https://github.com/SocialGouv/gitlab-ci-yml/commit/e3dfd7a41d4a8d7f3d87ef48ce8ed31acd74a042))

## [7.3.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.3.1...v7.3.2) (2020-02-25)


### Bug Fixes

* **autodevops:** ensure that prod deploy has PRODUCTION set ([#56](https://github.com/SocialGouv/gitlab-ci-yml/issues/56)) ([6e3eb7e](https://github.com/SocialGouv/gitlab-ci-yml/commit/6e3eb7ebcc6eec81b922c8a65e73b163a94e354d))

## [7.3.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.3.0...v7.3.1) (2020-02-25)


### Bug Fixes

* **autodevops:** remove the gitlab project id on the namespace in prod ([25fb5ec](https://github.com/SocialGouv/gitlab-ci-yml/commit/25fb5ec897958a0087b813b4454a52d5d1619850))

# [7.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.2.0...v7.3.0) (2020-02-12)


### Features

* add postgresql cleaner stage ([#47](https://github.com/SocialGouv/gitlab-ci-yml/issues/47)) ([afc57dc](https://github.com/SocialGouv/gitlab-ci-yml/commit/afc57dc44eed1338d232d88e5f47cda73bade4b2))

# [7.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.1.0...v7.2.0) (2020-02-12)


### Features

* **hpa:** prefer using global variables ([#45](https://github.com/SocialGouv/gitlab-ci-yml/issues/45)) ([476997b](https://github.com/SocialGouv/gitlab-ci-yml/commit/476997b3c821a7336b337c66dd9be21aab3ee80d))
* **namespaces:** prefer using global variables ([#44](https://github.com/SocialGouv/gitlab-ci-yml/issues/44)) ([107165c](https://github.com/SocialGouv/gitlab-ci-yml/commit/107165c09346698657b5cee4345e1cb55b739e17))
* **namespaces:** prefer using global variables ([#46](https://github.com/SocialGouv/gitlab-ci-yml/issues/46)) ([fc460b1](https://github.com/SocialGouv/gitlab-ci-yml/commit/fc460b1e66907dda4a01f24e96f97f47ccb67f05))

# [7.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.0.1...v7.1.0) (2020-02-11)


### Features

* **nodejs:** allow user HELM_RENDER_ARGS ([#43](https://github.com/SocialGouv/gitlab-ci-yml/issues/43)) ([792131f](https://github.com/SocialGouv/gitlab-ci-yml/commit/792131f8569c1a264366cc5acd8cae9fe375561d))

## [7.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v7.0.0...v7.0.1) (2020-02-11)


### Bug Fixes

* **autodevops:**  do no deploy review env on master and tags ([7783410](https://github.com/SocialGouv/gitlab-ci-yml/commit/7783410364da4a2c6b5947abd94500d0cf823371))

# [7.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v6.1.0...v7.0.0) (2020-02-10)


* ci(gitlab)!: make it gitlab.com compatible (#39) ([8e91884](https://github.com/SocialGouv/gitlab-ci-yml/commit/8e9188457ba51697392e1137321e66f27361a92e)), closes [#39](https://github.com/SocialGouv/gitlab-ci-yml/issues/39)


### Reverts

* Revert "feat(helm): install helm just and socialgouv repo by default(#37)" (#40) ([78851b4](https://github.com/SocialGouv/gitlab-ci-yml/commit/78851b448877313d115b88dcd8ee41c608d5d3c4)), closes [#37](https://github.com/SocialGouv/gitlab-ci-yml/issues/37) [#40](https://github.com/SocialGouv/gitlab-ci-yml/issues/40)


### BREAKING CHANGES

* ci(gitlab)!: make it gitlab.com compatible

    - We are manly using the `environment:name` and `environment:url` to make gitlab guess the linked pod environment in the k8s cluster.
    - We recommend that review environments are prefixed `review` : `name: review/${CI_COMMIT_REF_NAME}-dev`
    - You might want to prefixed `preprod` you preprod : `name: preprod/${CI_COMMIT_TAG}-dev`
    - URL are can be generated from the environment name.
    - To fully enjoy the GitLab environments link with the k8s you should additional annotations and labels to your pods

      ```yaml

      labels:
        app.kubernetes.io/part-of: sample-next-app
        owner: sample-next-app
        team: sample-next-app

      deployment:

        annotations:
          app.gitlab.com/app: ${CI_PROJECT_PATH_SLUG}
          app.gitlab.com/env: ${CI_ENVIRONMENT_SLUG}

      # etc...
      ```
    - We are now running register stages on docker:19 :tada:
    - A clean up stage can be added to no-production deployment to delete linked namespace.
    - We deprecate the `K8S_NAMESPACE` env variable in favor of `KUBE_NAMESPACE` !
      `KUBE_NAMESPACE` is generated by gitlab from the `environment:name`.
    - Artifacts should last a day now ;)
    - the `RANCHER_PROJECT_ID` variable is optional

# [6.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v6.0.0...v6.1.0) (2020-01-30)


### Features

* **helm:** install helm just and socialgouv repo by default([#37](https://github.com/SocialGouv/gitlab-ci-yml/issues/37)) ([097b187](https://github.com/SocialGouv/gitlab-ci-yml/commit/097b187ce96f6fb43a807dd29dc5fb0db7a355c6))

# [6.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v5.0.0...v6.0.0) (2020-01-30)


* feat(base_register_stage)!: add `DOCKER_VERSION` default variable (#34) ([cf874c2](https://github.com/SocialGouv/gitlab-ci-yml/commit/cf874c27945184f795dc2f9825ace96949cd288a)), closes [#34](https://github.com/SocialGouv/gitlab-ci-yml/issues/34)


### BREAKING CHANGES

* feat(base_register_stage)!: add default DOCKER_VERSION value
  - might not be compatible with our current gitlab.factory.social.gouv.fr runners

# [5.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.6.1...v5.0.0) (2020-01-10)


* feat(deps)!: update SocialGouv/helm-charts to v3.0.0 (#33) ([0916b56](https://github.com/SocialGouv/gitlab-ci-yml/commit/0916b56822adcd413c3bb3612a0795dbdee1e9a6)), closes [#33](https://github.com/SocialGouv/gitlab-ci-yml/issues/33) [#32](https://github.com/SocialGouv/gitlab-ci-yml/issues/32)


### BREAKING CHANGES

* update SocialGouv/helm-charts to v3.0.0

See https://github.com/SocialGouv/helm-charts/releases/tag/v3.0.0

## [4.6.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.6.0...v4.6.1) (2020-01-10)


### Reverts

* Revert "feat: use helm chart version 2.14.0 (#32)" ([590a4ff](https://github.com/SocialGouv/gitlab-ci-yml/commit/590a4ff09983bf2fe8470ee3a114d47f04f26e2f)), closes [#32](https://github.com/SocialGouv/gitlab-ci-yml/issues/32)

# [4.6.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.5.4...v4.6.0) (2020-01-09)


### Features

* use helm chart version 2.14.0 ([#32](https://github.com/SocialGouv/gitlab-ci-yml/issues/32)) ([93609ec](https://github.com/SocialGouv/gitlab-ci-yml/commit/93609ec618f01a54ab3dff826992a37b347b8b80))

## [4.5.4](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.5.3...v4.5.4) (2019-12-31)


### Bug Fixes

* **autodevops:** wrong production var check ([#26](https://github.com/SocialGouv/gitlab-ci-yml/issues/26)) ([dbb4c47](https://github.com/SocialGouv/gitlab-ci-yml/commit/dbb4c47dcc08eb07ad27f0507b1ae7413d1b2c0a))

## [4.5.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.5.2...v4.5.3) (2019-12-31)


### Bug Fixes

* **autodevops_simple_app:** use full url as HOST in notify ([f6ef651](https://github.com/SocialGouv/gitlab-ci-yml/commit/f6ef6519ac2ce907bcad4de1426e9ec0ab336861))

## [4.5.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.5.1...v4.5.2) (2019-12-31)


### Bug Fixes

* **autodevops_simple_app:** ensure to set the HOST on notify ([49b99d5](https://github.com/SocialGouv/gitlab-ci-yml/commit/49b99d5a3b87856672395762b05f6ea623a0d5cb))

## [4.5.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.5.0...v4.5.1) (2019-12-31)


### Bug Fixes

* **nodejs:** use variable to sync helm chart version ([e7d4487](https://github.com/SocialGouv/gitlab-ci-yml/commit/e7d44879aed0cbbeae054c29a06fe0210f834949))

# [4.5.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.4.1...v4.5.0) (2019-12-31)


### Features

* **nodejs:** use helm chart version 2.13.0 ([b368202](https://github.com/SocialGouv/gitlab-ci-yml/commit/b368202553167b9757467ccea1fea104c113fdde))

## [4.4.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.4.0...v4.4.1) (2019-12-30)


### Bug Fixes

* **nodejs:** extra "l" typo ([2638243](https://github.com/SocialGouv/gitlab-ci-yml/commit/2638243facd9a1e22d1fa996e7a0d2b5a44a9d18))

# [4.4.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.3.0...v4.4.0) (2019-12-30)


### Features

* **nodejs:** use helm chart version 2.12.0 ([34bc606](https://github.com/SocialGouv/gitlab-ci-yml/commit/34bc606f433c166f6fdaa63bf692acee6bd1aefd))

# [4.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.2.0...v4.3.0) (2019-12-27)


### Features

* add ssl to hpa chart ([#25](https://github.com/SocialGouv/gitlab-ci-yml/issues/25)) ([343d00d](https://github.com/SocialGouv/gitlab-ci-yml/commit/343d00d20866d835fc66940e79bab3c36d42f89e))

# [4.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.1.0...v4.2.0) (2019-12-19)


### Features

* use helm chart version 2.11.0 ([#21](https://github.com/SocialGouv/gitlab-ci-yml/issues/21)) ([3ffa3bc](https://github.com/SocialGouv/gitlab-ci-yml/commit/3ffa3bca0e42c92c53cde5fa2b0e56d1554474d5))

# [4.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.0.1...v4.1.0) (2019-12-19)


### Features

* **notify:** change production ENVIRONMENT test ([7165ca5](https://github.com/SocialGouv/gitlab-ci-yml/commit/7165ca56bd253d82b085e9f1ef6941eb16a3650c))
* **notify:** rename update url to HOST ([56c418c](https://github.com/SocialGouv/gitlab-ci-yml/commit/56c418cfb985fb5c7a17155c3e6f9ef8d79d8623))
* update hpa helm version from 2.9.0 to 2.10.0 ([#20](https://github.com/SocialGouv/gitlab-ci-yml/issues/20)) ([d01cbec](https://github.com/SocialGouv/gitlab-ci-yml/commit/d01cbec58d38cbad1766da9abd38ffa0c6e89c9e))

## [4.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v4.0.0...v4.0.1) (2019-12-13)


### Bug Fixes

* **node_chart:** unexpected EOF while looking for matching `"' ([7298ebb](https://github.com/SocialGouv/gitlab-ci-yml/commit/7298ebbad50e330482ff81e6f2e9625f524b00cb))

# [4.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.2.0...v4.0.0) (2019-12-13)


### Features

* **nodejs_chart:** force the wildcard-crt if not in production ([#13](https://github.com/SocialGouv/gitlab-ci-yml/issues/13)) ([dedc550](https://github.com/SocialGouv/gitlab-ci-yml/commit/dedc55024e5e40f48415e820bfeffa4925a41296))


### BREAKING CHANGES

* **nodejs_chart:** feat(nodejs_chart): force the wildcard-crt if not in production
    - **.base_deploy_nodejs_chart_stage**: The job is now forcing `--set ingress.tls[0].secretName=wildcard-crt` if not in production mode.

# [3.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.1.1...v3.2.0) (2019-12-13)


### Features

* **nodejs_chart:** force the wildcard-crt if not in production ([#13](https://github.com/SocialGouv/gitlab-ci-yml/issues/13)) ([ec5a613](https://github.com/SocialGouv/gitlab-ci-yml/commit/ec5a6137f9847975c7c92c6928880e8069143699))

## [3.1.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.1.0...v3.1.1) (2019-12-13)


### Bug Fixes

* **autodevops:** change auto PRODUCTION condition ([2e9946b](https://github.com/SocialGouv/gitlab-ci-yml/commit/2e9946b96836c247910115c2f702cd002d12e544))

# [3.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.7...v3.1.0) (2019-12-12)


### Features

* **register:** improve register code ([#12](https://github.com/SocialGouv/gitlab-ci-yml/issues/12)) ([e605bba](https://github.com/SocialGouv/gitlab-ci-yml/commit/e605bbacb263eae172568f426db2a93370bf607a))

## [3.0.7](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.6...v3.0.7) (2019-12-10)


### Bug Fixes

* **autodevops:** explicit return true in PRODUCTION var ([f14a2c4](https://github.com/SocialGouv/gitlab-ci-yml/commit/f14a2c42a8e78a877d82a4c3896bc67558f98395))

## [3.0.6](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.5...v3.0.6) (2019-12-10)


### Bug Fixes

* **autodevops:** before_script should be an array of strings ([1eaa21e](https://github.com/SocialGouv/gitlab-ci-yml/commit/1eaa21ed1f624173b156a6971aeb4ae27fbcea74))

## [3.0.5](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.4...v3.0.5) (2019-12-10)


### Bug Fixes

* **autodevops:** share resolve env ([8401939](https://github.com/SocialGouv/gitlab-ci-yml/commit/8401939dfafcf3c64c93bb7face8be27b1ecbdb8))

## [3.0.4](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.3...v3.0.4) (2019-12-10)


### Bug Fixes

* **nodejs:** allow PRODUCTION value to be self defined ([84250eb](https://github.com/SocialGouv/gitlab-ci-yml/commit/84250eb259937c71390e4a4fa2b9e2bb622b304b))

## [3.0.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.2...v3.0.3) (2019-12-10)


### Bug Fixes

* **nodejs:** allow HOST overwrite ([1ae8f22](https://github.com/SocialGouv/gitlab-ci-yml/commit/1ae8f22e7d89837840c3677afdc5f7aa748858a7))

## [3.0.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.1...v3.0.2) (2019-12-10)


### Bug Fixes

* **release:** test new release process ([3973e73](https://github.com/SocialGouv/gitlab-ci-yml/commit/3973e73976d0560d19acdd358d4801d1b5366672))

## [3.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v3.0.0...v3.0.1) (2019-12-10)


### Bug Fixes

* test new release process ([d98640a](https://github.com/SocialGouv/gitlab-ci-yml/commit/d98640a52e418817711a23889fe885015ec49ed5))

# [3.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v2.2.1...v3.0.0) (2019-12-10)


### Features

* **autodevops:** level 1 simple apps ([#9](https://github.com/SocialGouv/gitlab-ci-yml/issues/9)) ([cfef1ee](https://github.com/SocialGouv/gitlab-ci-yml/commit/cfef1ee932f26c75ef613a1185ff5c90587ab7ac))
* **hpa:** add ability to use horizontal pod autoscaler ([#10](https://github.com/SocialGouv/gitlab-ci-yml/issues/10)) ([8fffcd8](https://github.com/SocialGouv/gitlab-ci-yml/commit/8fffcd8cd8f64294d55cce5af2b01caedc7b0e67))


### BREAKING CHANGES

* **autodevops:** feat(autodevops): level 1 simple apps
  - Might break namespace creation
  - Might break register jobs

## [2.2.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v2.2.0...v2.2.1) (2019-12-06)


### Bug Fixes

* bump to socialgouv/docker/*:0.18.0 ([1301272](https://github.com/SocialGouv/gitlab-ci-yml/commit/13012721ee3429f9464605fb36db70276308e235))

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
