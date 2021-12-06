## [23.3.4](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.3.3...v23.3.4) (2021-12-06)


### Bug Fixes

* **release:** use node@16 ([#583](https://github.com/SocialGouv/gitlab-ci-yml/issues/583)) ([2120735](https://github.com/SocialGouv/gitlab-ci-yml/commit/21207354c9345840fe39a2b42331a338d8f5b2f5))

## [23.3.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.3.2...v23.3.3) (2021-09-15)


### Bug Fixes

* **base_deploy_kosko_stage:** rm debug ([644b968](https://github.com/SocialGouv/gitlab-ci-yml/commit/644b96880030cf06a61c39105303d657596df303))

## [23.3.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.3.1...v23.3.2) (2021-09-15)


### Bug Fixes

* **base_deploy_kosko_stage:** sed it again ([5e2a7b7](https://github.com/SocialGouv/gitlab-ci-yml/commit/5e2a7b7ca110554040c8a3a7d64543bc272736bc))

## [23.3.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.3.0...v23.3.1) (2021-09-15)


### Bug Fixes

* **autodevops:** increase envs lifetime ([#551](https://github.com/SocialGouv/gitlab-ci-yml/issues/551)) ([2f9be59](https://github.com/SocialGouv/gitlab-ci-yml/commit/2f9be593fc2bee34280347dd76fa7d42df27fb38))
* **base_deploy_kosko_stage:** force new cert-manager annotation ([#569](https://github.com/SocialGouv/gitlab-ci-yml/issues/569)) ([16c3e30](https://github.com/SocialGouv/gitlab-ci-yml/commit/16c3e3079d1ec087e106fd509464397e379a9e50))

# [23.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.2.1...v23.3.0) (2021-08-17)


### Features

* **semantic_release:** ignore subgroup on release github remote ([#548](https://github.com/SocialGouv/gitlab-ci-yml/issues/548)) ([78f9a0c](https://github.com/SocialGouv/gitlab-ci-yml/commit/78f9a0cba2f616dc890f126e50dca3482f23232a))

## [23.2.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.2.0...v23.2.1) (2021-07-28)


### Bug Fixes

* **release:** force patch ([0a64e71](https://github.com/SocialGouv/gitlab-ci-yml/commit/0a64e7149514871b2ca034fc12ecc6b355b4f5ba))

# [23.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.1.1...v23.2.0) (2021-07-01)


### Bug Fixes

* **autodevops:** skip post-release master pipeline ([#523](https://github.com/SocialGouv/gitlab-ci-yml/issues/523)) ([455adcc](https://github.com/SocialGouv/gitlab-ci-yml/commit/455adcceed855dc769516e15e2320b3dffea13b1))


### Features

* add grafana urls ([#524](https://github.com/SocialGouv/gitlab-ci-yml/issues/524)) ([1e9a3dc](https://github.com/SocialGouv/gitlab-ci-yml/commit/1e9a3dcaf461a2132792b6e23e25c2707b3c2821))

## [23.1.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.1.0...v23.1.1) (2021-06-30)


### Bug Fixes

* **kosko-deploy:** output multiple rules url ([#522](https://github.com/SocialGouv/gitlab-ci-yml/issues/522)) ([8895125](https://github.com/SocialGouv/gitlab-ci-yml/commit/8895125fd0e34c3a56c87bbec349195a81f7f7ec))

# [23.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.0.1...v23.1.0) (2021-06-28)


### Features

* add rancher/grafana urls ([#521](https://github.com/SocialGouv/gitlab-ci-yml/issues/521)) ([9b10ecc](https://github.com/SocialGouv/gitlab-ci-yml/commit/9b10ecc16206c0aa0142542b7f15bc5f8f87bc38))

## [23.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v23.0.0...v23.0.1) (2021-06-14)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v6.21.1 ([a1f60af](https://github.com/SocialGouv/gitlab-ci-yml/commit/a1f60afed76e974181bc863b2aabfecf83d5a873))
* **release:** force patch ([73998c8](https://github.com/SocialGouv/gitlab-ci-yml/commit/73998c80e9e5f3b1506c7bc4d7712419c63ce8f4))
* **release:** force patch ([0ed5314](https://github.com/SocialGouv/gitlab-ci-yml/commit/0ed5314154d07990c21454b8e968333e0c09e41d))


### Reverts

* **renovate:** force enable the 🤖 on this repo ([e72c1c7](https://github.com/SocialGouv/gitlab-ci-yml/commit/e72c1c762039af51e94c94db2babfdc0d854a629))

# [23.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.9...v23.0.0) (2021-06-11)


* revert(autodevops)!: disable auto deploy on branches to save budget (#505) ([b657f7e](https://github.com/SocialGouv/gitlab-ci-yml/commit/b657f7e8b97c53b9c26909c724d609a58e4e5eff)), closes [#505](https://github.com/SocialGouv/gitlab-ci-yml/issues/505)


### BREAKING CHANGES

* We are now deploying to new clusters :)

## [22.1.9](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.8...v22.1.9) (2021-05-27)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v6.16.0 ([#504](https://github.com/SocialGouv/gitlab-ci-yml/issues/504)) ([c10f60a](https://github.com/SocialGouv/gitlab-ci-yml/commit/c10f60ac2da654da8c19f5d5f3d576f447d1f243))

## [22.1.8](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.7...v22.1.8) (2021-05-27)


### Bug Fixes

* force release ([fc7a88b](https://github.com/SocialGouv/gitlab-ci-yml/commit/fc7a88bd7e7857f369398421d442d9f21d40dfcc))

## [22.1.7](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.6...v22.1.7) (2021-05-25)


### Bug Fixes

* force release ([09e6f5d](https://github.com/SocialGouv/gitlab-ci-yml/commit/09e6f5d9571d3a0fbc7171affdf48955a53d8371))

## [22.1.6](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.5...v22.1.6) (2021-05-19)


### Bug Fixes

* Bump no-k8s image version. ([#499](https://github.com/SocialGouv/gitlab-ci-yml/issues/499)) ([ff25475](https://github.com/SocialGouv/gitlab-ci-yml/commit/ff254758b59098271f7762fb14a17187e0f46a14))

## [22.1.5](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.4...v22.1.5) (2021-05-19)


### Bug Fixes

* force release ([ef258a7](https://github.com/SocialGouv/gitlab-ci-yml/commit/ef258a7f3e48920765a52fac3df28a37c95be64b))

## [22.1.4](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.3...v22.1.4) (2021-05-17)


### Bug Fixes

* **release:** force patch ([16bd355](https://github.com/SocialGouv/gitlab-ci-yml/commit/16bd35512113573dd68486da1143dfc9ea969ab2))

## [22.1.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.2...v22.1.3) (2021-05-12)


### Bug Fixes

* **release:** force patch ([14bb25b](https://github.com/SocialGouv/gitlab-ci-yml/commit/14bb25ba6b7bca086cfeaff98a9378f4c7aa6742))

## [22.1.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.1...v22.1.2) (2021-05-12)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v6.7.1 ([#493](https://github.com/SocialGouv/gitlab-ci-yml/issues/493)) ([bf864b7](https://github.com/SocialGouv/gitlab-ci-yml/commit/bf864b759893075fc0750890b551ab4630147e9d))

## [22.1.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.1.0...v22.1.1) (2021-05-12)


### Bug Fixes

* force release ([92bcf64](https://github.com/SocialGouv/gitlab-ci-yml/commit/92bcf64344587e1e4c3ad85432ee6f4de35b66b8))

# [22.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.0.1...v22.1.0) (2021-05-06)


### Features

* **kosko:** add dangerous-override-ownership-of-existing-resources flag to kapp ([#487](https://github.com/SocialGouv/gitlab-ci-yml/issues/487)) ([efbc500](https://github.com/SocialGouv/gitlab-ci-yml/commit/efbc500531428ed8b19330bf4eec8d4df862c64b))

## [22.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v22.0.0...v22.0.1) (2021-05-05)


### Bug Fixes

* use ghcr.io docker registry ([#486](https://github.com/SocialGouv/gitlab-ci-yml/issues/486)) ([52fe0c6](https://github.com/SocialGouv/gitlab-ci-yml/commit/52fe0c6cc96f2fe62ec46722e06bec9341bb843b))

# [22.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v21.0.2...v22.0.0) (2021-04-22)


* feat(autodevops)!: disable auto deploy on branches to save budget (#484) ([c6b11b0](https://github.com/SocialGouv/gitlab-ci-yml/commit/c6b11b0ca142d345bd23792f03abb42d1dbb3aaf)), closes [#484](https://github.com/SocialGouv/gitlab-ci-yml/issues/484)


### BREAKING CHANGES

* One will have to manually click on the buttons in the pipeline to deploy

## [21.0.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v21.0.1...v21.0.2) (2021-04-22)


### Bug Fixes

* **autodevops:** autodevops_stop_review is not using an image with kapp ([#485](https://github.com/SocialGouv/gitlab-ci-yml/issues/485)) ([2b31705](https://github.com/SocialGouv/gitlab-ci-yml/commit/2b3170582fc5b3199edcc7989abdd0d7179c067f))

## [21.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v21.0.0...v21.0.1) (2021-04-15)


### Bug Fixes

* **autodevops:** do not try to trigger production on triggers ([8c0031e](https://github.com/SocialGouv/gitlab-ci-yml/commit/8c0031e6956aea78220775d26cd30c18deba378d))
* **autodevops:** do not try to trigger production on triggers (2) ([dd87e8b](https://github.com/SocialGouv/gitlab-ci-yml/commit/dd87e8b16ccc531d2c1e24714136602fdad5ec8b))

# [21.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.8.0...v21.0.0) (2021-04-01)


* feat(autodevops)!: use generic TRIGGER (#480) ([b155f6b](https://github.com/SocialGouv/gitlab-ci-yml/commit/b155f6be26925780e4e195aeea307d0625f47134)), closes [#480](https://github.com/SocialGouv/gitlab-ci-yml/issues/480)


### BREAKING CHANGES

* Manual releases will need to go through the `TRIGGER` env variable now

No impact on existing `Trigger Production` and `Trigger Release` jobs.
But other jobs will need to do `TRIGGER="<my stuff>"`

# [20.8.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.14...v20.8.0) (2021-03-25)


### Bug Fixes

* **base_register_kaniko_stage:** add default stage ([#459](https://github.com/SocialGouv/gitlab-ci-yml/issues/459)) ([dcd9a6e](https://github.com/SocialGouv/gitlab-ci-yml/commit/dcd9a6efb34060fae9d284187d24bd11fe88e368))


### Features

* **no-k8s:** Get config from components folder ([#475](https://github.com/SocialGouv/gitlab-ci-yml/issues/475)) ([8f30bf1](https://github.com/SocialGouv/gitlab-ci-yml/commit/8f30bf1f352a6dff6c9268081a33410d98601f6c))

## [20.7.14](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.13...v20.7.14) (2021-03-18)


### Bug Fixes

* **yq:** yq version 4 args ([#476](https://github.com/SocialGouv/gitlab-ci-yml/issues/476)) ([279390e](https://github.com/SocialGouv/gitlab-ci-yml/commit/279390e8718c5be7c3b783d6356d8812e022a794))

## [20.7.13](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.12...v20.7.13) (2021-03-17)


### Bug Fixes

* **monorepo:** remove only skip file before check ([7b86afc](https://github.com/SocialGouv/gitlab-ci-yml/commit/7b86afc4e1e47a05169b6236497462ef9662271a))

## [20.7.12](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.11...v20.7.12) (2021-03-17)


### Bug Fixes

* **monorepo:** invalidate cache folder on has_changed cmd ([cd0c222](https://github.com/SocialGouv/gitlab-ci-yml/commit/cd0c222bdb2af3fe52b8a6a51422d69f69675331))

## [20.7.11](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.10...v20.7.11) (2021-03-15)


### Bug Fixes

* **deploy:** fix urls print when too long ([#472](https://github.com/SocialGouv/gitlab-ci-yml/issues/472)) ([066d195](https://github.com/SocialGouv/gitlab-ci-yml/commit/066d1950a283fdae2c5e184867f65ec93da09486))

## [20.7.10](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.9...v20.7.10) (2021-03-15)


### Bug Fixes

* Trigger release. ([6fd7d92](https://github.com/SocialGouv/gitlab-ci-yml/commit/6fd7d924c139907897e839be2b72c63d5284c522))

## [20.7.9](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.8...v20.7.9) (2021-02-26)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v4.6.3 ([#467](https://github.com/SocialGouv/gitlab-ci-yml/issues/467)) ([162cc6f](https://github.com/SocialGouv/gitlab-ci-yml/commit/162cc6f81986ce92d53b5b9b365553c83c512575))

## [20.7.8](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.7...v20.7.8) (2021-02-25)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v4.6.2 ([#466](https://github.com/SocialGouv/gitlab-ci-yml/issues/466)) ([09f9f63](https://github.com/SocialGouv/gitlab-ci-yml/commit/09f9f632449ea5507ea16b68fc52418134574fce))

## [20.7.7](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.6...v20.7.7) (2021-02-25)


### Bug Fixes

* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kubectl docker tag to v4.6.2 ([#465](https://github.com/SocialGouv/gitlab-ci-yml/issues/465)) ([e318156](https://github.com/SocialGouv/gitlab-ci-yml/commit/e318156b689bb16c959d3276823abdb57ed71beb))

## [20.7.6](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.5...v20.7.6) (2021-02-23)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v4.6.1 ([#463](https://github.com/SocialGouv/gitlab-ci-yml/issues/463)) ([c0a6fbc](https://github.com/SocialGouv/gitlab-ci-yml/commit/c0a6fbce4cdbc98b9e671c4841994ceeea75a110))

## [20.7.5](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.4...v20.7.5) (2021-02-22)


### Bug Fixes

* **deps:** update socialgouv/docker images docker tags to v4.6.0 ([#461](https://github.com/SocialGouv/gitlab-ci-yml/issues/461)) ([6f4192f](https://github.com/SocialGouv/gitlab-ci-yml/commit/6f4192f8b9e3937bdad7c892c5f2afb4e8d43b0d))

## [20.7.4](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.3...v20.7.4) (2021-02-22)


### Bug Fixes

* force path version ([42d5002](https://github.com/SocialGouv/gitlab-ci-yml/commit/42d500267e384d827c5a478f73f3a3b92dcd01f7))

## [20.7.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.2...v20.7.3) (2021-02-11)


### Bug Fixes

* Restore autodevops_register_image job. ([#455](https://github.com/SocialGouv/gitlab-ci-yml/issues/455)) ([a494a08](https://github.com/SocialGouv/gitlab-ci-yml/commit/a494a08ebf1ab47f0c5f8d51178b859fa8dff7ba))

## [20.7.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.1...v20.7.2) (2021-02-08)


### Bug Fixes

* restore base_register_stage ([#453](https://github.com/SocialGouv/gitlab-ci-yml/issues/453)) ([fa74eb7](https://github.com/SocialGouv/gitlab-ci-yml/commit/fa74eb7231d43b08b730155147ebfef73f8e9891))

## [20.7.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.7.0...v20.7.1) (2021-02-05)


### Bug Fixes

* dummy release ([773e14d](https://github.com/SocialGouv/gitlab-ci-yml/commit/773e14d685e9ef52f25ff6ee93be0ef72809b4ee))

# [20.7.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.6.1...v20.7.0) (2021-02-05)


### Features

* No .k8s folder. ([a4b29ae](https://github.com/SocialGouv/gitlab-ci-yml/commit/a4b29ae25af0004c755ae87ff10f2a99b80ddf50))

## [20.6.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.6.0...v20.6.1) (2021-01-29)


### Bug Fixes

* release ([cdc3b25](https://github.com/SocialGouv/gitlab-ci-yml/commit/cdc3b25776e20cc838357531bcba622fadddf627))

# [20.6.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.5.1...v20.6.0) (2021-01-25)


### Features

* **kosko:** log the AUTO_ variables too ([#444](https://github.com/SocialGouv/gitlab-ci-yml/issues/444)) ([1e55e66](https://github.com/SocialGouv/gitlab-ci-yml/commit/1e55e6657107dfee18b6e08d82315f53304af2e7))

## [20.5.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.5.0...v20.5.1) (2021-01-22)


### Bug Fixes

* Set autodevops_trigger_rule to registration jobs. ([#442](https://github.com/SocialGouv/gitlab-ci-yml/issues/442)) ([716a544](https://github.com/SocialGouv/gitlab-ci-yml/commit/716a5448ff9ac7f726608dc395f6f1e6b5ca5020))

# [20.5.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.4.1...v20.5.0) (2021-01-22)


### Features

* Switch from Docker to Kaniko based on pipeline env variable: AUTO_DEVOPS_KANIKO. ([#441](https://github.com/SocialGouv/gitlab-ci-yml/issues/441)) ([53d9b2d](https://github.com/SocialGouv/gitlab-ci-yml/commit/53d9b2d97fa07a807c5bd2cadf6a7eaaa36193f0))

## [20.4.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.4.0...v20.4.1) (2021-01-19)


### Bug Fixes

* lint ([8c195b6](https://github.com/SocialGouv/gitlab-ci-yml/commit/8c195b622cadf0081fbe8d044d25066438b1d4bd))
* **kaniko:** always prefix CONTEXT with $PWD ([3a28fab](https://github.com/SocialGouv/gitlab-ci-yml/commit/3a28fabab853b495afc38d44520db5c01d315f72))

# [20.4.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.3.1...v20.4.0) (2021-01-18)


### Bug Fixes

* **autodevops:** dont trigger release when released ([#437](https://github.com/SocialGouv/gitlab-ci-yml/issues/437)) ([ca0085a](https://github.com/SocialGouv/gitlab-ci-yml/commit/ca0085adcc76df883379ced2053d520c17371cf9))


### Features

* add .base_kaniko_stage ([#439](https://github.com/SocialGouv/gitlab-ci-yml/issues/439)) ([affde80](https://github.com/SocialGouv/gitlab-ci-yml/commit/affde809d00d6cb966adc2c5a63f58a0df416cd6))

## [20.3.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.3.0...v20.3.1) (2021-01-12)


### Reverts

* Revert "feat(deps): update docker docker tag to v20" (#438) ([9dd4a1f](https://github.com/SocialGouv/gitlab-ci-yml/commit/9dd4a1ff9aaa93e9ea6b2c50f534631dea7558c9)), closes [#438](https://github.com/SocialGouv/gitlab-ci-yml/issues/438)

# [20.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.2.0...v20.3.0) (2021-01-12)


### Features

* add AUTO_DEVOPS_ENABLE_KAPP ([#416](https://github.com/SocialGouv/gitlab-ci-yml/issues/416)) ([dba82c5](https://github.com/SocialGouv/gitlab-ci-yml/commit/dba82c58d8c52873bb07445702e7b79b1e90fd4f))

# [20.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.1.5...v20.2.0) (2021-01-06)


### Features

* **deps:** update docker docker tag to v20 ([#425](https://github.com/SocialGouv/gitlab-ci-yml/issues/425)) ([813e160](https://github.com/SocialGouv/gitlab-ci-yml/commit/813e160db39e1ed153ebcf6e3e59e1dc79fd7bfa))

## [20.1.5](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.1.4...v20.1.5) (2021-01-04)


### Bug Fixes

* **deploy:** dont exit when no manifest file ([764894e](https://github.com/SocialGouv/gitlab-ci-yml/commit/764894ef61e1130d0ef56ec0cb76540c6558d939))

## [20.1.4](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.1.3...v20.1.4) (2021-01-04)


### Bug Fixes

* **deploy:** ensure manifest.yaml exist to print ([#432](https://github.com/SocialGouv/gitlab-ci-yml/issues/432)) ([d1e1db6](https://github.com/SocialGouv/gitlab-ci-yml/commit/d1e1db6428baf7b80bcc784260179814ae7187c8))

## [20.1.3](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.1.2...v20.1.3) (2020-12-31)


### Bug Fixes

* handle multiple hosts urls fix [#429](https://github.com/SocialGouv/gitlab-ci-yml/issues/429) ([#430](https://github.com/SocialGouv/gitlab-ci-yml/issues/430)) ([e3a5625](https://github.com/SocialGouv/gitlab-ci-yml/commit/e3a562576bd199b10926c6c68544a0c65d7d8441))
* **autodevops:** dont always trigger release ([#428](https://github.com/SocialGouv/gitlab-ci-yml/issues/428)) ([b00ed25](https://github.com/SocialGouv/gitlab-ci-yml/commit/b00ed25bb272f4c911922967d67659943100bce2))

## [20.1.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.1.1...v20.1.2) (2020-12-14)


### Bug Fixes

* **autodevops:** dont run test+lint on tags ([#423](https://github.com/SocialGouv/gitlab-ci-yml/issues/423)) ([ada8380](https://github.com/SocialGouv/gitlab-ci-yml/commit/ada838069bc76bde53c4cc9985250e30bb3d2f97))

## [20.1.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.1.0...v20.1.1) (2020-12-11)


### Bug Fixes

* **kosko:** yet another url print ([#422](https://github.com/SocialGouv/gitlab-ci-yml/issues/422)) ([44984fd](https://github.com/SocialGouv/gitlab-ci-yml/commit/44984fd6fb2d1ba40e503b1ff6a2ce2720b9dbf0))

# [20.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v20.0.0...v20.1.0) (2020-12-11)


### Features

* **deps:** update socialgouv/docker images docker tags to v2.5.0 ([#415](https://github.com/SocialGouv/gitlab-ci-yml/issues/415)) ([d4c0ef7](https://github.com/SocialGouv/gitlab-ci-yml/commit/d4c0ef73e92918b291d803526112d7722d691958))

# [20.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v19.3.0...v20.0.0) (2020-12-04)


### Features

* **kosko:** only install production deps when deploying ([#421](https://github.com/SocialGouv/gitlab-ci-yml/issues/421)) ([321fcb1](https://github.com/SocialGouv/gitlab-ci-yml/commit/321fcb1c779be8901ea314a58e105e8f0b28c433))


### BREAKING CHANGES

* **kosko:** You will want to move your dependencies in the "dependencies" of your `package.json`

```diff
   "dependencies": {
     "@kosko/env": "^0.5.2",
     "@socialgouv/kosko-charts": "^4.0.0-alpha.8",
     "@socialgouv/kosko-charts": "^4.0.0-alpha.8",
-    "kubernetes-models": "^0.8.1"
+    "kubernetes-models": "^0.8.1",
+    "kosko": "^0.9.2",
+    "ts-node": "^9.0.0",
+    "typescript": "^4.0.5"
   },
   "devDependencies": {
     "@babel/core": "^7.12.9",
     "@babel/plugin-transform-modules-commonjs": "^7.12.1",
-    "@types/jest": "^26.0.16",
     "@types/node": "^14.11.10",
-    "dotenv": "^8.2.0",
-    "kosko": "^0.9.2",
-    "ts-node": "^9.0.0",
-    "typescript": "^4.0.5"
+    "@types/jest": "^26.0.16",
+    "dotenv": "^8.2.0"
   }
 }
```

# [19.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v19.2.0...v19.3.0) (2020-12-04)


### Features

* **kosko:** share env with the user ([#420](https://github.com/SocialGouv/gitlab-ci-yml/issues/420)) ([e2d6dd4](https://github.com/SocialGouv/gitlab-ci-yml/commit/e2d6dd450dd0f184be45e139ec07a76ab079b9d1))

# [19.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v19.1.0...v19.2.0) (2020-12-03)


### Features

* add base_nuclei_scan.yml ([#418](https://github.com/SocialGouv/gitlab-ci-yml/issues/418)) ([a18f4ef](https://github.com/SocialGouv/gitlab-ci-yml/commit/a18f4ef867d8ebd6c92ebcab2dbd4c5b440210ac))

# [19.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v19.0.0...v19.1.0) (2020-12-03)


### Features

* **autodevops:** .autodevops_k8s_test needs no one to run ([7755180](https://github.com/SocialGouv/gitlab-ci-yml/commit/7755180fdd105b56aef4ff66bee560e03f6af07e))

# [19.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.12.1...v19.0.0) (2020-12-03)


### Features

* **autodevops:** add .k8s/package.json tests job ([#419](https://github.com/SocialGouv/gitlab-ci-yml/issues/419)) ([57ae81a](https://github.com/SocialGouv/gitlab-ci-yml/commit/57ae81af08a83c5e4ae8f41c3208a74869f46900))


### BREAKING CHANGES

* **autodevops:** Will fail your pipeline if you do not have a "test" script in your `.k8s/package.json`

This change enforce that the "test" script in your `.k8s/package.json` should be successfull.
Project withour one will have a bad supprise :x:

Will updating to this major version you should consider updating to `@socialgouv/kosko-charts@"4.0.0-alpha.7"`
with the `@socialgouv/kosko-charts/testing` strategy for `.k8s` forlders

Work aroud (no recommended) :

```
// .k8s/package.json
{
    // [...]
    "scripts": {
        "test": "exit 0"
    }
    // [...]
}
```

## [18.12.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.12.0...v18.12.1) (2020-12-03)


### Reverts

* Revert "feat(autodevops): add .k8s/package.json tests job (#419)" ([098a8bc](https://github.com/SocialGouv/gitlab-ci-yml/commit/098a8bc713ced834ddf7a831e08dc2d89bcb5fbb)), closes [#419](https://github.com/SocialGouv/gitlab-ci-yml/issues/419)

# [18.12.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.11.1...v18.12.0) (2020-12-03)


### Features

* **autodevops:** add .k8s/package.json tests job ([#419](https://github.com/SocialGouv/gitlab-ci-yml/issues/419)) ([48a32b0](https://github.com/SocialGouv/gitlab-ci-yml/commit/48a32b03041017484857021fb78bee68b1d6620f))

## [18.11.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.11.0...v18.11.1) (2020-12-01)


### Bug Fixes

* **kosko:** rererefix env debug ([#417](https://github.com/SocialGouv/gitlab-ci-yml/issues/417)) ([58cec66](https://github.com/SocialGouv/gitlab-ci-yml/commit/58cec66fcb142a3dc694be7ff620cd2562cfc660))

# [18.11.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.10.0...v18.11.0) (2020-10-30)


### Features

* **deps:** update socialgouv/docker images docker tags to v2.0.1 ([#413](https://github.com/SocialGouv/gitlab-ci-yml/issues/413)) ([791e2d5](https://github.com/SocialGouv/gitlab-ci-yml/commit/791e2d5a51768d45631d19d7834069195e78fef2))

# [18.10.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.9.0...v18.10.0) (2020-10-23)


### Features

* **deps:** update node docker tag to v15.0.1 ([#411](https://github.com/SocialGouv/gitlab-ci-yml/issues/411)) ([1344637](https://github.com/SocialGouv/gitlab-ci-yml/commit/1344637f7786a1b53980f44239a2deb73543768e))

# [18.9.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.8.2...v18.9.0) (2020-10-22)


### Features

* **deps:** update node docker tag to v15 ([#410](https://github.com/SocialGouv/gitlab-ci-yml/issues/410)) ([4e6a0de](https://github.com/SocialGouv/gitlab-ci-yml/commit/4e6a0de7d95172db24c8ca69944b2520e0828c5a))

## [18.8.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.8.1...v18.8.2) (2020-10-21)


### Bug Fixes

* **notify:** more AUTO_DEVOPS_NOTIFY_DISABLED ([#408](https://github.com/SocialGouv/gitlab-ci-yml/issues/408)) ([25cacf1](https://github.com/SocialGouv/gitlab-ci-yml/commit/25cacf1327941f4d3a6f7cde942a89992a9bc014))

## [18.8.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.8.1...v18.8.2) (2020-10-21)


### Bug Fixes

* **notify:** more AUTO_DEVOPS_NOTIFY_DISABLED ([#408](https://github.com/SocialGouv/gitlab-ci-yml/issues/408)) ([25cacf1](https://github.com/SocialGouv/gitlab-ci-yml/commit/25cacf1327941f4d3a6f7cde942a89992a9bc014))

## [18.8.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.8.0...v18.8.1) (2020-10-21)


### Bug Fixes

* **kosko:** fix foiroose print ([#406](https://github.com/SocialGouv/gitlab-ci-yml/issues/406)) ([cb1fe55](https://github.com/SocialGouv/gitlab-ci-yml/commit/cb1fe555a369b51474fc9d445ea3fc9aee8bedb7))
* **preprod:** increase auto_stop_in to 1 month ([#407](https://github.com/SocialGouv/gitlab-ci-yml/issues/407)) ([f547534](https://github.com/SocialGouv/gitlab-ci-yml/commit/f5475347fd191afe552e0718db0705f8d6e6eed2))

# [18.8.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.7.0...v18.8.0) (2020-10-16)


### Features

* **deps:** update node docker tag to v14.14.0 ([#405](https://github.com/SocialGouv/gitlab-ci-yml/issues/405)) ([b22afe0](https://github.com/SocialGouv/gitlab-ci-yml/commit/b22afe06555c719ed998fde6ada933facca507fd))

# [18.7.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.6.0...v18.7.0) (2020-10-15)


### Features

* **deps:** update socialgouv/docker images docker tags to v2 ([#404](https://github.com/SocialGouv/gitlab-ci-yml/issues/404)) ([b7f43de](https://github.com/SocialGouv/gitlab-ci-yml/commit/b7f43decd2e38b7dbdd5a1018e77895e772f2c60))

# [18.6.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.5.0...v18.6.0) (2020-10-15)


### Features

* **autodevops:** add AUTO_DEVOPS_NOTIFY_DISABLED ([#402](https://github.com/SocialGouv/gitlab-ci-yml/issues/402)) ([070a047](https://github.com/SocialGouv/gitlab-ci-yml/commit/070a04733e6c78fd43ab5ebef38bf6b9703f544b))

# [18.5.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.4.0...v18.5.0) (2020-10-14)


### Features

* **deps:** update curlimages/curl docker tag to v7.73.0 ([#403](https://github.com/SocialGouv/gitlab-ci-yml/issues/403)) ([c3da38b](https://github.com/SocialGouv/gitlab-ci-yml/commit/c3da38be74e3d822ffaf94a9031a233f6fba7342))

# [18.4.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.3.0...v18.4.0) (2020-10-08)


### Features

* **deps:** update node docker tag to v14.13.1 ([#401](https://github.com/SocialGouv/gitlab-ci-yml/issues/401)) ([e2178ab](https://github.com/SocialGouv/gitlab-ci-yml/commit/e2178ab2b78bdccf84f898d51c578abdc643451b))

# [18.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.2.0...v18.3.0) (2020-10-08)


### Features

* **deploy:** bigger deploy url in gitlab logs ([#400](https://github.com/SocialGouv/gitlab-ci-yml/issues/400)) ([eda8713](https://github.com/SocialGouv/gitlab-ci-yml/commit/eda8713416a35ad5a080e5f99092ef30560800af))

# [18.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.1.0...v18.2.0) (2020-10-08)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.60.0 ([#399](https://github.com/SocialGouv/gitlab-ci-yml/issues/399)) ([24c8170](https://github.com/SocialGouv/gitlab-ci-yml/commit/24c817013df5a4e9a2f58a38d36706373fbbdc1a))

# [18.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.0.0...v18.1.0) (2020-10-07)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.59.1 ([#398](https://github.com/SocialGouv/gitlab-ci-yml/issues/398)) ([f271784](https://github.com/SocialGouv/gitlab-ci-yml/commit/f271784ab7983c77ee1eee12f7caee4b99752b37))

# [18.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.23.0...v18.0.0) (2020-10-07)


* feat(kosko)!: remove envsubst on appended yaml (#397) ([1864163](https://github.com/SocialGouv/gitlab-ci-yml/commit/1864163639e74f34ebc3ed83b48f559b3c7d1d86)), closes [#397](https://github.com/SocialGouv/gitlab-ci-yml/issues/397)


### BREAKING CHANGES

* might break `kubectl apply` on the output manifest if `KUBE_NAMESPACE` is not set on the GitLab job

# [18.0.0-alpha.2](https://github.com/SocialGouv/gitlab-ci-yml/compare/v18.0.0-alpha.1...v18.0.0-alpha.2) (2020-10-06)


### Bug Fixes

* **ci:** do not pipe in >> ... it does not work$ ([3e9c6a7](https://github.com/SocialGouv/gitlab-ci-yml/commit/3e9c6a7894df5abc38b157f77fbdf7e4f1778f6d))

# [18.0.0-alpha.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.23.0...v18.0.0-alpha.1) (2020-10-06)


* feat(kosko)!: remove envsubst on appended yaml ([0553648](https://github.com/SocialGouv/gitlab-ci-yml/commit/05536489483364c65978530e54b1369e29e05ee7))


### BREAKING CHANGES

* might break `kubectl apply` on the output manifest if `KUBE_NAMESPACE` is not set on the GitLab job

# [17.23.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.22.0...v17.23.0) (2020-10-05)


### Features

* **deps:** update node docker tag to v14.13.0 ([#396](https://github.com/SocialGouv/gitlab-ci-yml/issues/396)) ([0f00479](https://github.com/SocialGouv/gitlab-ci-yml/commit/0f0047917de912d1d94143b0f464d6e0bbdbc233))

# [17.22.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.21.1...v17.22.0) (2020-10-02)


### Features

* **deps:** update node docker tag to v14.12.0 ([#394](https://github.com/SocialGouv/gitlab-ci-yml/issues/394)) ([b9a860d](https://github.com/SocialGouv/gitlab-ci-yml/commit/b9a860dfe62bea68b945fd8d69911315dfa837ce))

## [17.21.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.21.0...v17.21.1) (2020-09-30)


### Bug Fixes

* **review:** set env expiration back to 1 day ([#393](https://github.com/SocialGouv/gitlab-ci-yml/issues/393)) ([36c71bf](https://github.com/SocialGouv/gitlab-ci-yml/commit/36c71bfbffe10d070c2c080efca5d469ca18caab))

# [17.21.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.20.0...v17.21.0) (2020-09-28)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.58.0 ([#392](https://github.com/SocialGouv/gitlab-ci-yml/issues/392)) ([8f684a0](https://github.com/SocialGouv/gitlab-ci-yml/commit/8f684a091a87d238222a2789b19416af64fb66af))

# [17.20.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.19.0...v17.20.0) (2020-09-28)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.57.0 ([#391](https://github.com/SocialGouv/gitlab-ci-yml/issues/391)) ([554c0d3](https://github.com/SocialGouv/gitlab-ci-yml/commit/554c0d30f77384c604dc6ee8e2b137103421a176))

# [17.19.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.18.0...v17.19.0) (2020-09-24)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.56.0 ([#389](https://github.com/SocialGouv/gitlab-ci-yml/issues/389)) ([d47d021](https://github.com/SocialGouv/gitlab-ci-yml/commit/d47d02162cf1e475c821daf33a705ab7290de64c))

# [17.18.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.17.0...v17.18.0) (2020-09-24)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.55.1 ([#388](https://github.com/SocialGouv/gitlab-ci-yml/issues/388)) ([8db1dea](https://github.com/SocialGouv/gitlab-ci-yml/commit/8db1dea6f6358ddaa45e73b985c7560d1579b42e))

# [17.17.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.16.0...v17.17.0) (2020-09-24)


### Bug Fixes

* **ci:** increase reviews env expiration timeout ([#384](https://github.com/SocialGouv/gitlab-ci-yml/issues/384)) ([71d2dbb](https://github.com/SocialGouv/gitlab-ci-yml/commit/71d2dbbc0ba3b1ec59a041a6c9b831d09dab9837))


### Features

* **deps:** update socialgouv/docker images docker tags to v1.55.0 ([#387](https://github.com/SocialGouv/gitlab-ci-yml/issues/387)) ([e458b0e](https://github.com/SocialGouv/gitlab-ci-yml/commit/e458b0efa3faa78971de442c42a810968d1b7384))

# [17.16.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.15.0...v17.16.0) (2020-09-16)


### Features

* **deps:** update node docker tag to v14.11.0 ([#383](https://github.com/SocialGouv/gitlab-ci-yml/issues/383)) ([0f39cf7](https://github.com/SocialGouv/gitlab-ci-yml/commit/0f39cf7f3c333fd8d823cd391ef9b7f26cee1839))

# [17.15.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.14.0...v17.15.0) (2020-09-15)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.54.2 ([#382](https://github.com/SocialGouv/gitlab-ci-yml/issues/382)) ([cbeaaf4](https://github.com/SocialGouv/gitlab-ci-yml/commit/cbeaaf4af5ce073f2ab4cc3efa533b3b98cd679b))

# [17.14.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.13.0...v17.14.0) (2020-09-15)


### Features

* **deps:** update node docker tag to v14.10.1 ([#379](https://github.com/SocialGouv/gitlab-ci-yml/issues/379)) ([48fac3e](https://github.com/SocialGouv/gitlab-ci-yml/commit/48fac3e3039f54f6db3df08d269412ebf3d1d3e0))

# [17.13.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.12.0...v17.13.0) (2020-09-12)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.54.1 ([#381](https://github.com/SocialGouv/gitlab-ci-yml/issues/381)) ([10bb5eb](https://github.com/SocialGouv/gitlab-ci-yml/commit/10bb5eb09d01490e3119bca18853a51e069019ef))

# [17.12.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.11.0...v17.12.0) (2020-09-12)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.54.0 ([#380](https://github.com/SocialGouv/gitlab-ci-yml/issues/380)) ([d0cda43](https://github.com/SocialGouv/gitlab-ci-yml/commit/d0cda432de3c2491873b6989e658d76d70ea7004))

# [17.11.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.10.0...v17.11.0) (2020-09-09)


### Features

* **deps:** update node docker tag to v14.10.0 ([#378](https://github.com/SocialGouv/gitlab-ci-yml/issues/378)) ([3da0785](https://github.com/SocialGouv/gitlab-ci-yml/commit/3da07857c1c1080a5855419f24f153ebf2dda802))

# [17.10.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.9.0...v17.10.0) (2020-08-28)


### Features

* **deps:** update node docker tag to v14.9.0 ([#377](https://github.com/SocialGouv/gitlab-ci-yml/issues/377)) ([292b99a](https://github.com/SocialGouv/gitlab-ci-yml/commit/292b99a4818afc2b3751982b3bd10abe5aa7b287))

# [17.9.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.8.0...v17.9.0) (2020-08-27)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.53.1 ([#376](https://github.com/SocialGouv/gitlab-ci-yml/issues/376)) ([b6dae1a](https://github.com/SocialGouv/gitlab-ci-yml/commit/b6dae1a58c96cefcc5d64fbc8118183462df3e03))

# [17.8.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.7.0...v17.8.0) (2020-08-27)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.53.0 ([#375](https://github.com/SocialGouv/gitlab-ci-yml/issues/375)) ([2683ff6](https://github.com/SocialGouv/gitlab-ci-yml/commit/2683ff6a213b4612e2cf3ad1064cea86e4cc638f))

# [17.7.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.6.0...v17.7.0) (2020-08-19)


### Features

* **deps:** update curlimages/curl docker tag to v7.72.0 ([#374](https://github.com/SocialGouv/gitlab-ci-yml/issues/374)) ([a6caff4](https://github.com/SocialGouv/gitlab-ci-yml/commit/a6caff412a20d1cfeb65652ca09767699291f9e0))

# [17.6.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.5.0...v17.6.0) (2020-08-15)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.52.1 ([#373](https://github.com/SocialGouv/gitlab-ci-yml/issues/373)) ([6499554](https://github.com/SocialGouv/gitlab-ci-yml/commit/64995543346da4dba0cd86f0f4209c23d636b62a))

# [17.5.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.4.0...v17.5.0) (2020-08-15)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.52.0 ([#372](https://github.com/SocialGouv/gitlab-ci-yml/issues/372)) ([56361e5](https://github.com/SocialGouv/gitlab-ci-yml/commit/56361e5eee812d5c59c4ad716fcb7b72a2fab2dc))

# [17.4.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.3.1...v17.4.0) (2020-08-13)


### Features

* **deps:** update node docker tag to v14.8.0 ([#371](https://github.com/SocialGouv/gitlab-ci-yml/issues/371)) ([03f986c](https://github.com/SocialGouv/gitlab-ci-yml/commit/03f986c9c964bbc4b3ca74088f6496c84a34309e))

## [17.3.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.3.0...v17.3.1) (2020-08-04)


### Bug Fixes

* **notify:** allow_failure ([#370](https://github.com/SocialGouv/gitlab-ci-yml/issues/370)) ([ced0b1d](https://github.com/SocialGouv/gitlab-ci-yml/commit/ced0b1de3a2b81def375f04761b86888d6964882))

# [17.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.2.0...v17.3.0) (2020-08-01)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.51.0 ([#369](https://github.com/SocialGouv/gitlab-ci-yml/issues/369)) ([aa8aae4](https://github.com/SocialGouv/gitlab-ci-yml/commit/aa8aae4ea2c7b3114ed46c1dcebbd137321bd7bd))

# [17.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.1.1...v17.2.0) (2020-07-31)


### Features

* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kosko docker tag to v1.50.2 ([#368](https://github.com/SocialGouv/gitlab-ci-yml/issues/368)) ([d417487](https://github.com/SocialGouv/gitlab-ci-yml/commit/d417487b8ef7d05275d601d1ac1bbe2a59f1fb63))

## [17.1.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.1.0...v17.1.1) (2020-07-31)


### Bug Fixes

* **autodevops:** add manifests suffix to KOSKO_APPEND_YAML_FROM ([fa9a085](https://github.com/SocialGouv/gitlab-ci-yml/commit/fa9a085593aea58010403e67eeb84a4622749ee2))

# [17.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.0.0...v17.1.0) (2020-07-31)


### Features

* **deps:** update node docker tag to v14.7.0 ([#367](https://github.com/SocialGouv/gitlab-ci-yml/issues/367)) ([9c896a2](https://github.com/SocialGouv/gitlab-ci-yml/commit/9c896a28dcd70f8db01d8a3f5710f8f9d8088b0d))

# [17.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v16.2.0...v17.0.0) (2020-07-31)


* feat(autodevops)!: v17.0.0 (#259) ([564e7b3](https://github.com/SocialGouv/gitlab-ci-yml/commit/564e7b3c38d846ad30004c7755a698176f6ac4aa)), closes [#259](https://github.com/SocialGouv/gitlab-ci-yml/issues/259)


### Features

* **deps:** update curlimages/curl docker tag to v7.71.1 ([#350](https://github.com/SocialGouv/gitlab-ci-yml/issues/350)) ([448711e](https://github.com/SocialGouv/gitlab-ci-yml/commit/448711ef7ad63ce98dbd94c7d796e482e4f64cc1))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/pg-cleaner docker tag to v1.49.0 ([#363](https://github.com/SocialGouv/gitlab-ci-yml/issues/363)) ([b0eb84e](https://github.com/SocialGouv/gitlab-ci-yml/commit/b0eb84e461467e2080bb5c3cb159876bc8f8260a))
* **deps:** update socialgouv/docker images docker tags to v1.43.0 ([#351](https://github.com/SocialGouv/gitlab-ci-yml/issues/351)) ([97c292f](https://github.com/SocialGouv/gitlab-ci-yml/commit/97c292f1ee3bf9a46f5e7ddb3cbd2e55321e6894))
* **deps:** update socialgouv/docker images docker tags to v1.43.2 ([#352](https://github.com/SocialGouv/gitlab-ci-yml/issues/352)) ([ad9447c](https://github.com/SocialGouv/gitlab-ci-yml/commit/ad9447c8748103a4b91f12fd0c2fe110db064a92))
* **deps:** update socialgouv/docker images docker tags to v1.44.0 ([#353](https://github.com/SocialGouv/gitlab-ci-yml/issues/353)) ([ae21a20](https://github.com/SocialGouv/gitlab-ci-yml/commit/ae21a20a8510e5bc57ff435d6ddad80fccdc2ce6))
* **deps:** update socialgouv/docker images docker tags to v1.45.0 ([#354](https://github.com/SocialGouv/gitlab-ci-yml/issues/354)) ([5cda7a5](https://github.com/SocialGouv/gitlab-ci-yml/commit/5cda7a53250cd05d8d7b0adef26282f8c67e57f1))
* **deps:** update socialgouv/docker images docker tags to v1.45.1 ([#355](https://github.com/SocialGouv/gitlab-ci-yml/issues/355)) ([8f61083](https://github.com/SocialGouv/gitlab-ci-yml/commit/8f610831d47763af1e7e6d0ccb65f040df5ef2ee))
* **deps:** update socialgouv/docker images docker tags to v1.46.0 ([#356](https://github.com/SocialGouv/gitlab-ci-yml/issues/356)) ([d6bdc61](https://github.com/SocialGouv/gitlab-ci-yml/commit/d6bdc61c584f07e61cb824b0a6623b434086d1a1))
* **deps:** update socialgouv/docker images docker tags to v1.47.0 ([#357](https://github.com/SocialGouv/gitlab-ci-yml/issues/357)) ([6c55693](https://github.com/SocialGouv/gitlab-ci-yml/commit/6c55693ee448e47b9a45cca72c5e65dd29a1fa4b))
* **deps:** update socialgouv/docker images docker tags to v1.47.1 ([#358](https://github.com/SocialGouv/gitlab-ci-yml/issues/358)) ([4183e0e](https://github.com/SocialGouv/gitlab-ci-yml/commit/4183e0ec674f83a5f5c82b952ecf6733418ad2fb))
* **deps:** update socialgouv/docker images docker tags to v1.48.1 ([#360](https://github.com/SocialGouv/gitlab-ci-yml/issues/360)) ([11f79e1](https://github.com/SocialGouv/gitlab-ci-yml/commit/11f79e1635d8542c0cc77eae2448753790e780e1))
* **deps:** update socialgouv/docker images docker tags to v1.48.2 ([#361](https://github.com/SocialGouv/gitlab-ci-yml/issues/361)) ([f47844f](https://github.com/SocialGouv/gitlab-ci-yml/commit/f47844fd2eb19ab453c70c0b15683fab2191e075))
* **deps:** update socialgouv/docker images docker tags to v1.49.0 ([#362](https://github.com/SocialGouv/gitlab-ci-yml/issues/362)) ([12acd24](https://github.com/SocialGouv/gitlab-ci-yml/commit/12acd24586edc4908ecc7519f2989979e0bc9342))
* **deps:** update socialgouv/docker images docker tags to v1.50.0 ([#364](https://github.com/SocialGouv/gitlab-ci-yml/issues/364)) ([1c7e757](https://github.com/SocialGouv/gitlab-ci-yml/commit/1c7e757ee4f57c26723b9f33e867e308dff0db4e))
* **deps:** update socialgouv/docker images docker tags to v1.50.1 ([#365](https://github.com/SocialGouv/gitlab-ci-yml/issues/365)) ([1d4ad08](https://github.com/SocialGouv/gitlab-ci-yml/commit/1d4ad0885ee4cc8b73eb48a3655c0a0c0ea68fd2))
* **deps:** update socialgouv/docker images docker tags to v1.50.2 ([#366](https://github.com/SocialGouv/gitlab-ci-yml/issues/366)) ([387a5f0](https://github.com/SocialGouv/gitlab-ci-yml/commit/387a5f00839fd05f09a666efd046d6f51f0164f4))
* **yarn:** prefer-offline cached packages ([abdfe3c](https://github.com/SocialGouv/gitlab-ci-yml/commit/abdfe3c428a4327a784152abe95c11ae9ed34fc9))


### BREAKING CHANGES

* autodevops v17
    - new autodevops.yml file

    ```yaml
    include:
      - project: SocialGouv/gitlab-ci-yml
        file: /autodevops.yml
        ref: v17.0.0
    ```
    - remove autodevops_simple_app.yml
    - use rules instead of only/expect/when
    - use kosko for deployment

# [17.0.0-beta.36](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.0.0-beta.35...v17.0.0-beta.36) (2020-07-30)


### Bug Fixes

* **kosko:** log the production flag too ([fd3be78](https://github.com/SocialGouv/gitlab-ci-yml/commit/fd3be786f091496458d124b41895da1aed34a66a))

# [17.0.0-beta.35](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.0.0-beta.34...v17.0.0-beta.35) (2020-07-17)


### Bug Fixes

* **release_stage:** not interruptible ([61c7404](https://github.com/SocialGouv/gitlab-ci-yml/commit/61c740472e311ddbd92ae549d29437b279c7b1e0))

# [17.0.0-beta.34](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.0.0-beta.33...v17.0.0-beta.34) (2020-07-17)


### Bug Fixes

* **kosko:** ensure to come back to cwd to resolve yaml from folder ([9e05811](https://github.com/SocialGouv/gitlab-ci-yml/commit/9e058118554bbf905aa9d6b421fb7a4cd9a6ae76))

# [17.0.0-beta.33](https://github.com/SocialGouv/gitlab-ci-yml/compare/v17.0.0-beta.32...v17.0.0-beta.33) (2020-07-17)


### Bug Fixes

* **autodevops:** use CI_PROJECT_NAME as default ns name ([d941043](https://github.com/SocialGouv/gitlab-ci-yml/commit/d94104392a9c6720e92ec894c821cc874fa5c304))


### Features

* **deps:** update curlimages/curl docker tag to v7.71.0 ([#333](https://github.com/SocialGouv/gitlab-ci-yml/issues/333)) ([ae90508](https://github.com/SocialGouv/gitlab-ci-yml/commit/ae90508405ea62d57c5965d3879146e80b807861))
* **deps:** update curlimages/curl docker tag to v7.71.1 ([#350](https://github.com/SocialGouv/gitlab-ci-yml/issues/350)) ([448711e](https://github.com/SocialGouv/gitlab-ci-yml/commit/448711ef7ad63ce98dbd94c7d796e482e4f64cc1))
* **deps:** update socialgouv/docker images docker tags to v1.33.0 ([#320](https://github.com/SocialGouv/gitlab-ci-yml/issues/320)) ([a315a4a](https://github.com/SocialGouv/gitlab-ci-yml/commit/a315a4aeb43883404a32fd41e3e8a70002647a48))
* **deps:** update socialgouv/docker images docker tags to v1.33.1 ([#321](https://github.com/SocialGouv/gitlab-ci-yml/issues/321)) ([1315021](https://github.com/SocialGouv/gitlab-ci-yml/commit/131502114bcff2392ff2ef385cf3d7318dc16838))
* **deps:** update socialgouv/docker images docker tags to v1.33.2 ([#322](https://github.com/SocialGouv/gitlab-ci-yml/issues/322)) ([c8b1c2e](https://github.com/SocialGouv/gitlab-ci-yml/commit/c8b1c2e480a875a3dca488f84d2ea16fa06738b0))
* **deps:** update socialgouv/docker images docker tags to v1.34.0 ([#323](https://github.com/SocialGouv/gitlab-ci-yml/issues/323)) ([8350235](https://github.com/SocialGouv/gitlab-ci-yml/commit/8350235a8ee4fc31c94fe1eb76e49b9b638d207b))
* **deps:** update socialgouv/docker images docker tags to v1.34.1 ([#324](https://github.com/SocialGouv/gitlab-ci-yml/issues/324)) ([e4dd3fc](https://github.com/SocialGouv/gitlab-ci-yml/commit/e4dd3fcf7241193e22e656f883780599e9fe4680))
* **deps:** update socialgouv/docker images docker tags to v1.34.2 ([#325](https://github.com/SocialGouv/gitlab-ci-yml/issues/325)) ([77695a3](https://github.com/SocialGouv/gitlab-ci-yml/commit/77695a357a312a2655002e817bcfb164cdb29301))
* **deps:** update socialgouv/docker images docker tags to v1.35.1 ([#327](https://github.com/SocialGouv/gitlab-ci-yml/issues/327)) ([6e078e5](https://github.com/SocialGouv/gitlab-ci-yml/commit/6e078e5605e965c4e78d70674895e5fe821bfa7d))
* **deps:** update socialgouv/docker images docker tags to v1.36.0 ([#328](https://github.com/SocialGouv/gitlab-ci-yml/issues/328)) ([976e652](https://github.com/SocialGouv/gitlab-ci-yml/commit/976e6526c93fd10484f56ce233ad5f1d4ac67a74))
* **deps:** update socialgouv/docker images docker tags to v1.37.0 ([#329](https://github.com/SocialGouv/gitlab-ci-yml/issues/329)) ([26ab652](https://github.com/SocialGouv/gitlab-ci-yml/commit/26ab652ff9f202df22832954483d59d2897d23e4))
* **deps:** update socialgouv/docker images docker tags to v1.37.1 ([#330](https://github.com/SocialGouv/gitlab-ci-yml/issues/330)) ([8a1131d](https://github.com/SocialGouv/gitlab-ci-yml/commit/8a1131dbeba3d69f4e72053351bd6a41d50021b2))
* **deps:** update socialgouv/docker images docker tags to v1.37.2 ([#331](https://github.com/SocialGouv/gitlab-ci-yml/issues/331)) ([06fb6db](https://github.com/SocialGouv/gitlab-ci-yml/commit/06fb6db230a5152b7a5cfd41ca408eddfc34c6b3))
* **deps:** update socialgouv/docker images docker tags to v1.37.3 ([#332](https://github.com/SocialGouv/gitlab-ci-yml/issues/332)) ([1dd2634](https://github.com/SocialGouv/gitlab-ci-yml/commit/1dd26343fab2826a24b0211d727453c9a97a9ed8))
* **deps:** update socialgouv/docker images docker tags to v1.37.4 ([#335](https://github.com/SocialGouv/gitlab-ci-yml/issues/335)) ([6817526](https://github.com/SocialGouv/gitlab-ci-yml/commit/6817526b177ad73d6d899bba173f2fba8efc2cd3))
* **deps:** update socialgouv/docker images docker tags to v1.38.0 ([#338](https://github.com/SocialGouv/gitlab-ci-yml/issues/338)) ([45a09dd](https://github.com/SocialGouv/gitlab-ci-yml/commit/45a09dd83d30c4eb5b04cdf418bd2a8a1772a248))
* **deps:** update socialgouv/docker images docker tags to v1.38.1 ([#339](https://github.com/SocialGouv/gitlab-ci-yml/issues/339)) ([50dae35](https://github.com/SocialGouv/gitlab-ci-yml/commit/50dae3546885542039142e5c96a4fa701affa993))
* **deps:** update socialgouv/docker images docker tags to v1.39.0 ([#340](https://github.com/SocialGouv/gitlab-ci-yml/issues/340)) ([9007338](https://github.com/SocialGouv/gitlab-ci-yml/commit/9007338e149d211fd857c31a77fbaeea9129cdcc))
* **deps:** update socialgouv/docker images docker tags to v1.39.1 ([#341](https://github.com/SocialGouv/gitlab-ci-yml/issues/341)) ([51cc504](https://github.com/SocialGouv/gitlab-ci-yml/commit/51cc5043dcf0a5a9374c7a9c47a78913067d3d77))
* **deps:** update socialgouv/docker images docker tags to v1.40.0 ([#343](https://github.com/SocialGouv/gitlab-ci-yml/issues/343)) ([b41df5a](https://github.com/SocialGouv/gitlab-ci-yml/commit/b41df5a2228026668576d43db5df94dae71bd110))
* **deps:** update socialgouv/docker images docker tags to v1.40.1 ([#344](https://github.com/SocialGouv/gitlab-ci-yml/issues/344)) ([7b8a256](https://github.com/SocialGouv/gitlab-ci-yml/commit/7b8a2562461fddaf708009267bcd010444e5525e))
* **deps:** update socialgouv/docker images docker tags to v1.41.1 ([#345](https://github.com/SocialGouv/gitlab-ci-yml/issues/345)) ([72db636](https://github.com/SocialGouv/gitlab-ci-yml/commit/72db636e132c7263e23b06c48ba399e87a025c75))
* **deps:** update socialgouv/docker images docker tags to v1.41.2 ([#346](https://github.com/SocialGouv/gitlab-ci-yml/issues/346)) ([69fecd1](https://github.com/SocialGouv/gitlab-ci-yml/commit/69fecd131068ac529a7772a117a542e1477d03a0))
* **deps:** update socialgouv/docker images docker tags to v1.41.3 ([#347](https://github.com/SocialGouv/gitlab-ci-yml/issues/347)) ([985035a](https://github.com/SocialGouv/gitlab-ci-yml/commit/985035a667783d5be53afbb1b1b9bcc4186dc029))
* **deps:** update socialgouv/docker images docker tags to v1.42.0 ([#348](https://github.com/SocialGouv/gitlab-ci-yml/issues/348)) ([5287bfe](https://github.com/SocialGouv/gitlab-ci-yml/commit/5287bfec8b1a910836e03719a2dbb2d9821854ba))
* **deps:** update socialgouv/docker images docker tags to v1.42.1 ([#349](https://github.com/SocialGouv/gitlab-ci-yml/issues/349)) ([32aae33](https://github.com/SocialGouv/gitlab-ci-yml/commit/32aae33fafcde69858265d7b56de618d87990362))
* **deps:** update socialgouv/docker images docker tags to v1.43.0 ([#351](https://github.com/SocialGouv/gitlab-ci-yml/issues/351)) ([97c292f](https://github.com/SocialGouv/gitlab-ci-yml/commit/97c292f1ee3bf9a46f5e7ddb3cbd2e55321e6894))
* **deps:** update socialgouv/docker images docker tags to v1.43.2 ([#352](https://github.com/SocialGouv/gitlab-ci-yml/issues/352)) ([ad9447c](https://github.com/SocialGouv/gitlab-ci-yml/commit/ad9447c8748103a4b91f12fd0c2fe110db064a92))
* **deps:** update socialgouv/docker images docker tags to v1.44.0 ([#353](https://github.com/SocialGouv/gitlab-ci-yml/issues/353)) ([ae21a20](https://github.com/SocialGouv/gitlab-ci-yml/commit/ae21a20a8510e5bc57ff435d6ddad80fccdc2ce6))
* **deps:** update socialgouv/docker images docker tags to v1.45.0 ([#354](https://github.com/SocialGouv/gitlab-ci-yml/issues/354)) ([5cda7a5](https://github.com/SocialGouv/gitlab-ci-yml/commit/5cda7a53250cd05d8d7b0adef26282f8c67e57f1))
* **deps:** update socialgouv/docker images docker tags to v1.45.1 ([#355](https://github.com/SocialGouv/gitlab-ci-yml/issues/355)) ([8f61083](https://github.com/SocialGouv/gitlab-ci-yml/commit/8f610831d47763af1e7e6d0ccb65f040df5ef2ee))
* **deps:** update socialgouv/docker images docker tags to v1.46.0 ([#356](https://github.com/SocialGouv/gitlab-ci-yml/issues/356)) ([d6bdc61](https://github.com/SocialGouv/gitlab-ci-yml/commit/d6bdc61c584f07e61cb824b0a6623b434086d1a1))
* **deps:** update socialgouv/docker images docker tags to v1.47.0 ([#357](https://github.com/SocialGouv/gitlab-ci-yml/issues/357)) ([6c55693](https://github.com/SocialGouv/gitlab-ci-yml/commit/6c55693ee448e47b9a45cca72c5e65dd29a1fa4b))
* **deps:** update socialgouv/docker images docker tags to v1.47.1 ([#358](https://github.com/SocialGouv/gitlab-ci-yml/issues/358)) ([4183e0e](https://github.com/SocialGouv/gitlab-ci-yml/commit/4183e0ec674f83a5f5c82b952ecf6733418ad2fb))

# [16.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v16.1.0...v16.2.0) (2020-07-08)


### Bug Fixes

* **autodevops:** use CI_PROJECT_NAME as default ns name ([d941043](https://github.com/SocialGouv/gitlab-ci-yml/commit/d94104392a9c6720e92ec894c821cc874fa5c304))


### Features

* **deps:** update curlimages/curl docker tag to v7.71.0 ([#333](https://github.com/SocialGouv/gitlab-ci-yml/issues/333)) ([ae90508](https://github.com/SocialGouv/gitlab-ci-yml/commit/ae90508405ea62d57c5965d3879146e80b807861))
* **deps:** update dependency socialgouv/helm-charts to v6.2.0 ([#318](https://github.com/SocialGouv/gitlab-ci-yml/issues/318)) ([a024a14](https://github.com/SocialGouv/gitlab-ci-yml/commit/a024a14373d9a0a0577a2e01a7ece7ace50fe7ed))
* **deps:** update socialgouv/docker images docker tags to v1.32.1 ([#317](https://github.com/SocialGouv/gitlab-ci-yml/issues/317)) ([0079931](https://github.com/SocialGouv/gitlab-ci-yml/commit/00799310fa56c896b1c9bee66f0e07d13cec21ef))
* **deps:** update socialgouv/docker images docker tags to v1.32.2 ([#319](https://github.com/SocialGouv/gitlab-ci-yml/issues/319)) ([b9f4da0](https://github.com/SocialGouv/gitlab-ci-yml/commit/b9f4da05022d61f7796f6cab255d9dfaa9362cf8))
* **deps:** update socialgouv/docker images docker tags to v1.33.0 ([#320](https://github.com/SocialGouv/gitlab-ci-yml/issues/320)) ([a315a4a](https://github.com/SocialGouv/gitlab-ci-yml/commit/a315a4aeb43883404a32fd41e3e8a70002647a48))
* **deps:** update socialgouv/docker images docker tags to v1.33.1 ([#321](https://github.com/SocialGouv/gitlab-ci-yml/issues/321)) ([1315021](https://github.com/SocialGouv/gitlab-ci-yml/commit/131502114bcff2392ff2ef385cf3d7318dc16838))
* **deps:** update socialgouv/docker images docker tags to v1.33.2 ([#322](https://github.com/SocialGouv/gitlab-ci-yml/issues/322)) ([c8b1c2e](https://github.com/SocialGouv/gitlab-ci-yml/commit/c8b1c2e480a875a3dca488f84d2ea16fa06738b0))
* **deps:** update socialgouv/docker images docker tags to v1.34.0 ([#323](https://github.com/SocialGouv/gitlab-ci-yml/issues/323)) ([8350235](https://github.com/SocialGouv/gitlab-ci-yml/commit/8350235a8ee4fc31c94fe1eb76e49b9b638d207b))
* **deps:** update socialgouv/docker images docker tags to v1.34.1 ([#324](https://github.com/SocialGouv/gitlab-ci-yml/issues/324)) ([e4dd3fc](https://github.com/SocialGouv/gitlab-ci-yml/commit/e4dd3fcf7241193e22e656f883780599e9fe4680))
* **deps:** update socialgouv/docker images docker tags to v1.34.2 ([#325](https://github.com/SocialGouv/gitlab-ci-yml/issues/325)) ([77695a3](https://github.com/SocialGouv/gitlab-ci-yml/commit/77695a357a312a2655002e817bcfb164cdb29301))
* **deps:** update socialgouv/docker images docker tags to v1.35.1 ([#327](https://github.com/SocialGouv/gitlab-ci-yml/issues/327)) ([6e078e5](https://github.com/SocialGouv/gitlab-ci-yml/commit/6e078e5605e965c4e78d70674895e5fe821bfa7d))
* **deps:** update socialgouv/docker images docker tags to v1.36.0 ([#328](https://github.com/SocialGouv/gitlab-ci-yml/issues/328)) ([976e652](https://github.com/SocialGouv/gitlab-ci-yml/commit/976e6526c93fd10484f56ce233ad5f1d4ac67a74))
* **deps:** update socialgouv/docker images docker tags to v1.37.0 ([#329](https://github.com/SocialGouv/gitlab-ci-yml/issues/329)) ([26ab652](https://github.com/SocialGouv/gitlab-ci-yml/commit/26ab652ff9f202df22832954483d59d2897d23e4))
* **deps:** update socialgouv/docker images docker tags to v1.37.1 ([#330](https://github.com/SocialGouv/gitlab-ci-yml/issues/330)) ([8a1131d](https://github.com/SocialGouv/gitlab-ci-yml/commit/8a1131dbeba3d69f4e72053351bd6a41d50021b2))
* **deps:** update socialgouv/docker images docker tags to v1.37.2 ([#331](https://github.com/SocialGouv/gitlab-ci-yml/issues/331)) ([06fb6db](https://github.com/SocialGouv/gitlab-ci-yml/commit/06fb6db230a5152b7a5cfd41ca408eddfc34c6b3))
* **deps:** update socialgouv/docker images docker tags to v1.37.3 ([#332](https://github.com/SocialGouv/gitlab-ci-yml/issues/332)) ([1dd2634](https://github.com/SocialGouv/gitlab-ci-yml/commit/1dd26343fab2826a24b0211d727453c9a97a9ed8))
* **deps:** update socialgouv/docker images docker tags to v1.37.4 ([#335](https://github.com/SocialGouv/gitlab-ci-yml/issues/335)) ([6817526](https://github.com/SocialGouv/gitlab-ci-yml/commit/6817526b177ad73d6d899bba173f2fba8efc2cd3))
* **deps:** update socialgouv/docker images docker tags to v1.38.0 ([#338](https://github.com/SocialGouv/gitlab-ci-yml/issues/338)) ([45a09dd](https://github.com/SocialGouv/gitlab-ci-yml/commit/45a09dd83d30c4eb5b04cdf418bd2a8a1772a248))
* **deps:** update socialgouv/docker images docker tags to v1.38.1 ([#339](https://github.com/SocialGouv/gitlab-ci-yml/issues/339)) ([50dae35](https://github.com/SocialGouv/gitlab-ci-yml/commit/50dae3546885542039142e5c96a4fa701affa993))
* **deps:** update socialgouv/docker images docker tags to v1.39.0 ([#340](https://github.com/SocialGouv/gitlab-ci-yml/issues/340)) ([9007338](https://github.com/SocialGouv/gitlab-ci-yml/commit/9007338e149d211fd857c31a77fbaeea9129cdcc))
* **deps:** update socialgouv/docker images docker tags to v1.39.1 ([#341](https://github.com/SocialGouv/gitlab-ci-yml/issues/341)) ([51cc504](https://github.com/SocialGouv/gitlab-ci-yml/commit/51cc5043dcf0a5a9374c7a9c47a78913067d3d77))
* **deps:** update socialgouv/docker images docker tags to v1.40.0 ([#343](https://github.com/SocialGouv/gitlab-ci-yml/issues/343)) ([b41df5a](https://github.com/SocialGouv/gitlab-ci-yml/commit/b41df5a2228026668576d43db5df94dae71bd110))
* **deps:** update socialgouv/docker images docker tags to v1.40.1 ([#344](https://github.com/SocialGouv/gitlab-ci-yml/issues/344)) ([7b8a256](https://github.com/SocialGouv/gitlab-ci-yml/commit/7b8a2562461fddaf708009267bcd010444e5525e))
* **deps:** update socialgouv/docker images docker tags to v1.41.1 ([#345](https://github.com/SocialGouv/gitlab-ci-yml/issues/345)) ([72db636](https://github.com/SocialGouv/gitlab-ci-yml/commit/72db636e132c7263e23b06c48ba399e87a025c75))
* **deps:** update socialgouv/docker images docker tags to v1.41.2 ([#346](https://github.com/SocialGouv/gitlab-ci-yml/issues/346)) ([69fecd1](https://github.com/SocialGouv/gitlab-ci-yml/commit/69fecd131068ac529a7772a117a542e1477d03a0))
* **deps:** update socialgouv/docker images docker tags to v1.41.3 ([#347](https://github.com/SocialGouv/gitlab-ci-yml/issues/347)) ([985035a](https://github.com/SocialGouv/gitlab-ci-yml/commit/985035a667783d5be53afbb1b1b9bcc4186dc029))
* **deps:** update socialgouv/docker images docker tags to v1.42.0 ([#348](https://github.com/SocialGouv/gitlab-ci-yml/issues/348)) ([5287bfe](https://github.com/SocialGouv/gitlab-ci-yml/commit/5287bfec8b1a910836e03719a2dbb2d9821854ba))
* **deps:** update socialgouv/docker images docker tags to v1.42.1 ([#349](https://github.com/SocialGouv/gitlab-ci-yml/issues/349)) ([32aae33](https://github.com/SocialGouv/gitlab-ci-yml/commit/32aae33fafcde69858265d7b56de618d87990362))

# [16.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v16.0.1...v16.1.0) (2020-06-15)


### Bug Fixes

* **azure-db:** dont autoclean ([#299](https://github.com/SocialGouv/gitlab-ci-yml/issues/299)) ([0d8630a](https://github.com/SocialGouv/gitlab-ci-yml/commit/0d8630ae770f19027786974404305a8182387144))
* **docs:** fix some autodevops docs ([#272](https://github.com/SocialGouv/gitlab-ci-yml/issues/272)) ([3295105](https://github.com/SocialGouv/gitlab-ci-yml/commit/329510537e2b90e816c8a7724bc5d3d28d47b317))
* **trivy:** change arguments order ([#308](https://github.com/SocialGouv/gitlab-ci-yml/issues/308)) ([caab4d3](https://github.com/SocialGouv/gitlab-ci-yml/commit/caab4d317ae4ca9091124186a8878821deec9634))


### Features

* **deps:** update socialgouv/docker images docker tags to v1.21.1 ([#275](https://github.com/SocialGouv/gitlab-ci-yml/issues/275)) ([bb57c86](https://github.com/SocialGouv/gitlab-ci-yml/commit/bb57c861d5813e64a87b14215c69e5eea84c269a))
* **deps:** update socialgouv/docker images docker tags to v1.21.11 ([#283](https://github.com/SocialGouv/gitlab-ci-yml/issues/283)) ([bcd8ca6](https://github.com/SocialGouv/gitlab-ci-yml/commit/bcd8ca6e3cbfc1af51839b18cb98481a56bc0b9a))
* **deps:** update socialgouv/docker images docker tags to v1.21.13 ([#284](https://github.com/SocialGouv/gitlab-ci-yml/issues/284)) ([7abd8fe](https://github.com/SocialGouv/gitlab-ci-yml/commit/7abd8fe56c490bc1a782e10192d3e0c76d81754b))
* **deps:** update socialgouv/docker images docker tags to v1.21.16 ([#285](https://github.com/SocialGouv/gitlab-ci-yml/issues/285)) ([2b2f9b7](https://github.com/SocialGouv/gitlab-ci-yml/commit/2b2f9b7375b3afd8b04422416393f934c69d18e0))
* **deps:** update socialgouv/docker images docker tags to v1.21.17 ([#286](https://github.com/SocialGouv/gitlab-ci-yml/issues/286)) ([b95a67e](https://github.com/SocialGouv/gitlab-ci-yml/commit/b95a67ec5718408783cd7ee17506cb1a10b2f0ff))
* **deps:** update socialgouv/docker images docker tags to v1.21.18 ([#287](https://github.com/SocialGouv/gitlab-ci-yml/issues/287)) ([2c598ee](https://github.com/SocialGouv/gitlab-ci-yml/commit/2c598ee0311d735862628a10fea12b589b5e4aed))
* **deps:** update socialgouv/docker images docker tags to v1.21.2 ([#278](https://github.com/SocialGouv/gitlab-ci-yml/issues/278)) ([3f476f0](https://github.com/SocialGouv/gitlab-ci-yml/commit/3f476f06cbe2d7943336a8cf8704fc76809c4d98))
* **deps:** update socialgouv/docker images docker tags to v1.21.20 ([#288](https://github.com/SocialGouv/gitlab-ci-yml/issues/288)) ([c14d922](https://github.com/SocialGouv/gitlab-ci-yml/commit/c14d922ffdb76442a27192d5d87531b3861d7d19))
* **deps:** update socialgouv/docker images docker tags to v1.21.22 ([#289](https://github.com/SocialGouv/gitlab-ci-yml/issues/289)) ([c4305e9](https://github.com/SocialGouv/gitlab-ci-yml/commit/c4305e9c549045118533a2bf1bccdd522b40a473))
* **deps:** update socialgouv/docker images docker tags to v1.21.23 ([#290](https://github.com/SocialGouv/gitlab-ci-yml/issues/290)) ([6fc1af4](https://github.com/SocialGouv/gitlab-ci-yml/commit/6fc1af4c842cf55b4f270fcaf58a69cc68303c21))
* **deps:** update socialgouv/docker images docker tags to v1.21.5 ([#279](https://github.com/SocialGouv/gitlab-ci-yml/issues/279)) ([4cdf628](https://github.com/SocialGouv/gitlab-ci-yml/commit/4cdf6281284620de6d112b0466e8775fd3f01f38))
* **deps:** update socialgouv/docker images docker tags to v1.21.6 ([#280](https://github.com/SocialGouv/gitlab-ci-yml/issues/280)) ([5e21d9a](https://github.com/SocialGouv/gitlab-ci-yml/commit/5e21d9a99c001b42bdadeee7aac6c3151267e96e))
* **deps:** update socialgouv/docker images docker tags to v1.21.7 ([#281](https://github.com/SocialGouv/gitlab-ci-yml/issues/281)) ([f851ea1](https://github.com/SocialGouv/gitlab-ci-yml/commit/f851ea14956571f9276e4bb238f4fa85aa93d050))
* **deps:** update socialgouv/docker images docker tags to v1.21.9 ([#282](https://github.com/SocialGouv/gitlab-ci-yml/issues/282)) ([1948559](https://github.com/SocialGouv/gitlab-ci-yml/commit/19485597afd3576b3ab482a5c2fa2e22a21e6aff))
* **deps:** update socialgouv/docker images docker tags to v1.22.0 ([#292](https://github.com/SocialGouv/gitlab-ci-yml/issues/292)) ([29908cd](https://github.com/SocialGouv/gitlab-ci-yml/commit/29908cd12209d3ec276a39d628a227f57a4c22ab))
* **deps:** update socialgouv/docker images docker tags to v1.22.1 ([#293](https://github.com/SocialGouv/gitlab-ci-yml/issues/293)) ([f4eae68](https://github.com/SocialGouv/gitlab-ci-yml/commit/f4eae689f483ae7f3e61f43486c99e5d4a325e95))
* **deps:** update socialgouv/docker images docker tags to v1.22.2 ([#295](https://github.com/SocialGouv/gitlab-ci-yml/issues/295)) ([65d0031](https://github.com/SocialGouv/gitlab-ci-yml/commit/65d00317d819dd7a5553e883ebe08474586d2af4))
* **deps:** update socialgouv/docker images docker tags to v1.23.0 ([#296](https://github.com/SocialGouv/gitlab-ci-yml/issues/296)) ([2767b2d](https://github.com/SocialGouv/gitlab-ci-yml/commit/2767b2de7f314eec05f0b841c74fab794ef1a37b))
* **deps:** update socialgouv/docker images docker tags to v1.23.1 ([#297](https://github.com/SocialGouv/gitlab-ci-yml/issues/297)) ([45adf34](https://github.com/SocialGouv/gitlab-ci-yml/commit/45adf3401e8aafcee016d0a22486156403aae837))
* **deps:** update socialgouv/docker images docker tags to v1.24.0 ([#298](https://github.com/SocialGouv/gitlab-ci-yml/issues/298)) ([e48c8f0](https://github.com/SocialGouv/gitlab-ci-yml/commit/e48c8f0069e4807be636e8488367a56cf4f20dae))
* **deps:** update socialgouv/docker images docker tags to v1.24.1 ([#300](https://github.com/SocialGouv/gitlab-ci-yml/issues/300)) ([fc64690](https://github.com/SocialGouv/gitlab-ci-yml/commit/fc64690c7ab8aa85a77a6b7efd10867cda0a157e))
* **deps:** update socialgouv/docker images docker tags to v1.24.3 ([#301](https://github.com/SocialGouv/gitlab-ci-yml/issues/301)) ([856272c](https://github.com/SocialGouv/gitlab-ci-yml/commit/856272c6ec587e470bb29ae808239304b919c5a9))
* **deps:** update socialgouv/docker images docker tags to v1.25.0 ([#302](https://github.com/SocialGouv/gitlab-ci-yml/issues/302)) ([07b75b8](https://github.com/SocialGouv/gitlab-ci-yml/commit/07b75b828c2b89b43aa339154c642bf6964be7d9))
* **deps:** update socialgouv/docker images docker tags to v1.26.0 ([#303](https://github.com/SocialGouv/gitlab-ci-yml/issues/303)) ([ea51fd3](https://github.com/SocialGouv/gitlab-ci-yml/commit/ea51fd384efe8cb7f9df5a01180876e98b2b8c7b))
* **deps:** update socialgouv/docker images docker tags to v1.26.1 ([#304](https://github.com/SocialGouv/gitlab-ci-yml/issues/304)) ([20f5660](https://github.com/SocialGouv/gitlab-ci-yml/commit/20f5660cfc9cd2cd293dd4786e28cd36df8a8c0e))
* **deps:** update socialgouv/docker images docker tags to v1.27.0 ([#305](https://github.com/SocialGouv/gitlab-ci-yml/issues/305)) ([08da0bf](https://github.com/SocialGouv/gitlab-ci-yml/commit/08da0bf881ae23438ed33955511e686da32dc039))
* **deps:** update socialgouv/docker images docker tags to v1.27.1 ([#306](https://github.com/SocialGouv/gitlab-ci-yml/issues/306)) ([ae50718](https://github.com/SocialGouv/gitlab-ci-yml/commit/ae50718bcdf9abf7b63150f70cb824c4ddaeca8b))
* **deps:** update socialgouv/docker images docker tags to v1.27.2 ([#307](https://github.com/SocialGouv/gitlab-ci-yml/issues/307)) ([7791778](https://github.com/SocialGouv/gitlab-ci-yml/commit/77917786ab967636bc9b58e70a558dfa29bfa70d))
* **deps:** update socialgouv/docker images docker tags to v1.28.0 ([#309](https://github.com/SocialGouv/gitlab-ci-yml/issues/309)) ([a6bc51b](https://github.com/SocialGouv/gitlab-ci-yml/commit/a6bc51bc36f80a5db0e7ad12fe30eb506ca13fb4))
* **deps:** update socialgouv/docker images docker tags to v1.29.0 ([#310](https://github.com/SocialGouv/gitlab-ci-yml/issues/310)) ([383bcf2](https://github.com/SocialGouv/gitlab-ci-yml/commit/383bcf2f70aefcfac4e6d35aa121999257fde55f))
* **deps:** update socialgouv/docker images docker tags to v1.29.1 ([#311](https://github.com/SocialGouv/gitlab-ci-yml/issues/311)) ([23faa3d](https://github.com/SocialGouv/gitlab-ci-yml/commit/23faa3d508dfdcb435c73393835331cb506e8c72))
* **deps:** update socialgouv/docker images docker tags to v1.29.2 ([#312](https://github.com/SocialGouv/gitlab-ci-yml/issues/312)) ([e782765](https://github.com/SocialGouv/gitlab-ci-yml/commit/e7827655fe179b5c73fd470f0c0fc123ab07156c))
* **deps:** update socialgouv/docker images docker tags to v1.30.0 ([#313](https://github.com/SocialGouv/gitlab-ci-yml/issues/313)) ([59ff9bd](https://github.com/SocialGouv/gitlab-ci-yml/commit/59ff9bdf0452396eb63555bcca91e362058f22b6))
* **deps:** update socialgouv/docker images docker tags to v1.30.2 ([#314](https://github.com/SocialGouv/gitlab-ci-yml/issues/314)) ([6c0ee29](https://github.com/SocialGouv/gitlab-ci-yml/commit/6c0ee29139d4326fd712652ad2b68626692c0731))
* **deps:** update socialgouv/docker images docker tags to v1.31.0 ([#315](https://github.com/SocialGouv/gitlab-ci-yml/issues/315)) ([d24d82b](https://github.com/SocialGouv/gitlab-ci-yml/commit/d24d82b1a4ae689b13bf16db50655672b41182b6))
* **deps:** update socialgouv/docker images docker tags to v1.31.1 ([#316](https://github.com/SocialGouv/gitlab-ci-yml/issues/316)) ([bf66242](https://github.com/SocialGouv/gitlab-ci-yml/commit/bf66242bf482adbe107141abef958cb32c9fa3b0))

## [16.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v16.0.0...v16.0.1) (2020-05-28)


### Bug Fixes

* **azure-db:** increase GIT_DEPTH when cleanning up the db ([#276](https://github.com/SocialGouv/gitlab-ci-yml/issues/276)) ([b3dd95d](https://github.com/SocialGouv/gitlab-ci-yml/commit/b3dd95d757a264b7963d5338abf14a0eadfcf7df))
* **azure-db:** pull all branches ([#277](https://github.com/SocialGouv/gitlab-ci-yml/issues/277)) ([f2fba70](https://github.com/SocialGouv/gitlab-ci-yml/commit/f2fba70ea03a5962518e01cfcba9aaaee903d2f9))

# [16.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.9.0...v16.0.0) (2020-05-28)


### Bug Fixes

* **azure_db:** dont always extract secrets ([#274](https://github.com/SocialGouv/gitlab-ci-yml/issues/274)) ([0bee3b2](https://github.com/SocialGouv/gitlab-ci-yml/commit/0bee3b2935f561dfcf41c8450acddc7ccb376ffa))


### Features

* **deps:** update socialgouv/docker images docker tags to v1.17.1 ([#270](https://github.com/SocialGouv/gitlab-ci-yml/issues/270)) ([a73fc5e](https://github.com/SocialGouv/gitlab-ci-yml/commit/a73fc5edce40732f52bc830f23c23307aa9197f7))
* **deps:** update socialgouv/docker images docker tags to v1.18.0 ([#271](https://github.com/SocialGouv/gitlab-ci-yml/issues/271)) ([f060092](https://github.com/SocialGouv/gitlab-ci-yml/commit/f060092bd57d852bd89a49bbacf471c2f78ab552))
* **deps:** update socialgouv/docker images docker tags to v1.20.0 ([#273](https://github.com/SocialGouv/gitlab-ci-yml/issues/273)) ([a32de64](https://github.com/SocialGouv/gitlab-ci-yml/commit/a32de64ea624f05086fc405cae1233b9e7ae0cd5))
* **trivy:** use image subcommand ([#269](https://github.com/SocialGouv/gitlab-ci-yml/issues/269)) ([f59b2e6](https://github.com/SocialGouv/gitlab-ci-yml/commit/f59b2e64ef9260eb2907c28b9cf5478b2fbc8ee7))


* feat(snyk)!: remove snyk (#267) ([2f7f068](https://github.com/SocialGouv/gitlab-ci-yml/commit/2f7f068b2b2a3c1d3ee961d986110b33686e100d)), closes [#267](https://github.com/SocialGouv/gitlab-ci-yml/issues/267)


### BREAKING CHANGES

* remove the .base_snyk_scan

# [15.9.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.8.0...v15.9.0) (2020-05-27)


### Features

* **deps:** update socialgouv/docker images docker tags to v1.17.0 ([#268](https://github.com/SocialGouv/gitlab-ci-yml/issues/268)) ([2a73a14](https://github.com/SocialGouv/gitlab-ci-yml/commit/2a73a145a308c0c1ddaf914b209c32b5c4a56637))

# [15.8.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.7.0...v15.8.0) (2020-05-27)


### Features

* **autodevops:** auto cleanup azure dbs ([#265](https://github.com/SocialGouv/gitlab-ci-yml/issues/265)) ([b49bce1](https://github.com/SocialGouv/gitlab-ci-yml/commit/b49bce109f1f9092cb33f0162059ac3fee6b2b9f))
* **deps:** update snyk/snyk-cli docker tag to v1.320.4 ([#249](https://github.com/SocialGouv/gitlab-ci-yml/issues/249)) ([86df4b4](https://github.com/SocialGouv/gitlab-ci-yml/commit/86df4b4866f625a04d15ff57c9c117b6fb46e48d))
* **deps:** update snyk/snyk-cli docker tag to v1.320.5 ([#250](https://github.com/SocialGouv/gitlab-ci-yml/issues/250)) ([46e704b](https://github.com/SocialGouv/gitlab-ci-yml/commit/46e704ba58b4e2ec1205ecd2adfe5214c4af9e96))
* **deps:** update snyk/snyk-cli docker tag to v1.321.0 ([#251](https://github.com/SocialGouv/gitlab-ci-yml/issues/251)) ([3f98252](https://github.com/SocialGouv/gitlab-ci-yml/commit/3f98252a9018c428660be01cd0961071a4e7b4a0))
* **deps:** update snyk/snyk-cli docker tag to v1.322.0 ([#252](https://github.com/SocialGouv/gitlab-ci-yml/issues/252)) ([3927951](https://github.com/SocialGouv/gitlab-ci-yml/commit/3927951d7c4beb4ef9fe1b4033017ae456e8e5ee))
* **deps:** update snyk/snyk-cli docker tag to v1.323.1 ([#256](https://github.com/SocialGouv/gitlab-ci-yml/issues/256)) ([88096d7](https://github.com/SocialGouv/gitlab-ci-yml/commit/88096d7af512da33d6764dcf0ff4f19496ab519a))
* **deps:** update snyk/snyk-cli docker tag to v1.323.2 ([#257](https://github.com/SocialGouv/gitlab-ci-yml/issues/257)) ([3105682](https://github.com/SocialGouv/gitlab-ci-yml/commit/3105682c82a7574380f16ba1d4d9835eb1a3ce8a))
* **deps:** update snyk/snyk-cli docker tag to v1.324.0 ([#260](https://github.com/SocialGouv/gitlab-ci-yml/issues/260)) ([57df179](https://github.com/SocialGouv/gitlab-ci-yml/commit/57df179c2ce74d3c2f057e45e1e5e9336be6f5fc))
* **deps:** update snyk/snyk-cli docker tag to v1.325.0 ([#261](https://github.com/SocialGouv/gitlab-ci-yml/issues/261)) ([8ceec42](https://github.com/SocialGouv/gitlab-ci-yml/commit/8ceec42e264dd19faa9b8d65edd0506640d355db))
* **deps:** update snyk/snyk-cli docker tag to v1.326.0 ([#262](https://github.com/SocialGouv/gitlab-ci-yml/issues/262)) ([8e92b43](https://github.com/SocialGouv/gitlab-ci-yml/commit/8e92b4377fab6f25e0e6b1d0b79c734aa92ddc8c))
* **deps:** update snyk/snyk-cli docker tag to v1.327.1 ([#264](https://github.com/SocialGouv/gitlab-ci-yml/issues/264)) ([aa0547c](https://github.com/SocialGouv/gitlab-ci-yml/commit/aa0547cc89afdf3f26c9c4e1348296b0cfcb6f84))
* **deps:** update snyk/snyk-cli docker tag to v1.329.0 ([#266](https://github.com/SocialGouv/gitlab-ci-yml/issues/266)) ([7627896](https://github.com/SocialGouv/gitlab-ci-yml/commit/7627896f401484b9705bf55a05a4a5e25e8adb66))
* **deps:** update socialgouv/docker images docker tags to v1.16.0 ([#255](https://github.com/SocialGouv/gitlab-ci-yml/issues/255)) ([39226cf](https://github.com/SocialGouv/gitlab-ci-yml/commit/39226cf2051029258f60d439f167b9005fa5637a))

# [15.7.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.6.0...v15.7.0) (2020-05-14)


### Bug Fixes

* **autodevops:** change the default delete K8S namespace filter ([e8be537](https://github.com/SocialGouv/gitlab-ci-yml/commit/e8be537c3ec9fa5c9ff6e83b7e0db9bb06a4d36e))


### Features

* **deps:** update snyk/snyk-cli docker tag to v1.320.3 ([#248](https://github.com/SocialGouv/gitlab-ci-yml/issues/248)) ([23fd39b](https://github.com/SocialGouv/gitlab-ci-yml/commit/23fd39bf68a0e3a120c55d1f0c6c5287ae109c68))

# [15.6.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.5.0...v15.6.0) (2020-05-13)


### Features

* **deploy_app_chart:** archive the manifest ([#247](https://github.com/SocialGouv/gitlab-ci-yml/issues/247)) ([3de0b21](https://github.com/SocialGouv/gitlab-ci-yml/commit/3de0b214db903110e15ee384cc2df95b91a22f13))
* **deps:** update snyk/snyk-cli docker tag to v1.320.2 ([#246](https://github.com/SocialGouv/gitlab-ci-yml/issues/246)) ([55e5cbf](https://github.com/SocialGouv/gitlab-ci-yml/commit/55e5cbfa80b241c952d3f8ed09d47e709943a220))

# [15.5.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.4.0...v15.5.0) (2020-05-11)


### Bug Fixes

* **trivy:** default $CI_REGISTRY_IMAGE:$CI_COMMIT_SHA ([#231](https://github.com/SocialGouv/gitlab-ci-yml/issues/231)) ([452b541](https://github.com/SocialGouv/gitlab-ci-yml/commit/452b541ee01bd69a5ab511c37b14ac50e2fd7e4a))


### Features

* **deps:** update node docker tag to v14 ([#234](https://github.com/SocialGouv/gitlab-ci-yml/issues/234)) ([9a468e2](https://github.com/SocialGouv/gitlab-ci-yml/commit/9a468e24c93320589662c31f1211d7bc0c860fdf))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/azure-db docker tag to v1.14.0 ([#225](https://github.com/SocialGouv/gitlab-ci-yml/issues/225)) ([8572e99](https://github.com/SocialGouv/gitlab-ci-yml/commit/8572e990b41a7ae9492039e09cf7113707b6a929))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/azure-db docker tag to v1.15.0 ([#235](https://github.com/SocialGouv/gitlab-ci-yml/issues/235)) ([d7b0736](https://github.com/SocialGouv/gitlab-ci-yml/commit/d7b0736eebef4c1d8a9a66fd06024793c4072660))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/git-deploy docker tag to v1.14.0 ([#226](https://github.com/SocialGouv/gitlab-ci-yml/issues/226)) ([fa4cb09](https://github.com/SocialGouv/gitlab-ci-yml/commit/fa4cb0979a93acb99c7ad49de729586fb65d71de))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/git-deploy docker tag to v1.15.0 ([#236](https://github.com/SocialGouv/gitlab-ci-yml/issues/236)) ([efa6197](https://github.com/SocialGouv/gitlab-ci-yml/commit/efa6197e8f857d550dcf931bd309867fb39099df))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/helm docker tag to v1.14.0 ([#227](https://github.com/SocialGouv/gitlab-ci-yml/issues/227)) ([ee951de](https://github.com/SocialGouv/gitlab-ci-yml/commit/ee951de95bf4c8b806e24e33eb4a9323a97d7af7))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/helm docker tag to v1.15.0 ([#237](https://github.com/SocialGouv/gitlab-ci-yml/issues/237)) ([f8d0fed](https://github.com/SocialGouv/gitlab-ci-yml/commit/f8d0fed918eae1f99fc20bf0254f7150fd945bd4))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/k8s-ns-killer docker tag to v1.14.0 ([#228](https://github.com/SocialGouv/gitlab-ci-yml/issues/228)) ([40cceaf](https://github.com/SocialGouv/gitlab-ci-yml/commit/40cceafdfef9aa58fa9ac03a9750c10e7e44b673))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/k8s-ns-killer docker tag to v1.15.0 ([#238](https://github.com/SocialGouv/gitlab-ci-yml/issues/238)) ([3b86030](https://github.com/SocialGouv/gitlab-ci-yml/commit/3b860302a1b9e71c2a6be0199d813047bbcb1b9f))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kubectl docker tag to v1.14.0 ([#229](https://github.com/SocialGouv/gitlab-ci-yml/issues/229)) ([10032b1](https://github.com/SocialGouv/gitlab-ci-yml/commit/10032b106d569fa91bd1d4175b3c44ad339367c8))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kubectl docker tag to v1.15.0 ([#239](https://github.com/SocialGouv/gitlab-ci-yml/issues/239)) ([3c5adaa](https://github.com/SocialGouv/gitlab-ci-yml/commit/3c5adaad3b38e21a84cef17eb979171a043835ed))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/pg-cleaner docker tag to v1.14.0 ([#230](https://github.com/SocialGouv/gitlab-ci-yml/issues/230)) ([df883db](https://github.com/SocialGouv/gitlab-ci-yml/commit/df883dbc6fe4a381f40cfbd529ff1cae3bce3ce3))
* **deps:** update snyk/snyk-cli docker tag to v1.320.0 ([#242](https://github.com/SocialGouv/gitlab-ci-yml/issues/242)) ([3b99a09](https://github.com/SocialGouv/gitlab-ci-yml/commit/3b99a0977ed68e288f9e255ea76c3b91d2ccba61))
* **deps:** update snyk/snyk-cli docker tag to v1.320.1 ([#245](https://github.com/SocialGouv/gitlab-ci-yml/issues/245)) ([4e32d7e](https://github.com/SocialGouv/gitlab-ci-yml/commit/4e32d7e3839e8db293282809f3ad3aa04794e990))
* **deps:** update socialgouv/docker images docker tags to v1.15.0 ([#243](https://github.com/SocialGouv/gitlab-ci-yml/issues/243)) ([992b886](https://github.com/SocialGouv/gitlab-ci-yml/commit/992b88696fd4af1fc8d272b84581e1e6828f2895))

# [15.4.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.3.0...v15.4.0) (2020-05-07)


### Features

* add trivy job ([#186](https://github.com/SocialGouv/gitlab-ci-yml/issues/186)) ([3dccf0b](https://github.com/SocialGouv/gitlab-ci-yml/commit/3dccf0b53a2164967aad43e93760e891330f7173))
* **autodevops:** remove env prefix in deployed helm chart app ([#222](https://github.com/SocialGouv/gitlab-ci-yml/issues/222)) ([bc2e03c](https://github.com/SocialGouv/gitlab-ci-yml/commit/bc2e03cdfa2a1cbeee1f935d1bab1d7fb215047e))
* **deps:** update curlimages/curl docker tag to v7.70.0 ([#204](https://github.com/SocialGouv/gitlab-ci-yml/issues/204)) ([def9e1b](https://github.com/SocialGouv/gitlab-ci-yml/commit/def9e1bfeb3a181514f4d66acfbc1f6eedcf4250))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/azure-db docker tag to v1.11.0 ([#188](https://github.com/SocialGouv/gitlab-ci-yml/issues/188)) ([9f3740c](https://github.com/SocialGouv/gitlab-ci-yml/commit/9f3740c2a21f7e2d3f437f2ca7384d32fdfaa28a))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/azure-db docker tag to v1.12.0 ([#194](https://github.com/SocialGouv/gitlab-ci-yml/issues/194)) ([5229102](https://github.com/SocialGouv/gitlab-ci-yml/commit/5229102c18d09e03d8e81bfd7035d20ea5ab53c6))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/azure-db docker tag to v1.13.0 ([#212](https://github.com/SocialGouv/gitlab-ci-yml/issues/212)) ([0e6499b](https://github.com/SocialGouv/gitlab-ci-yml/commit/0e6499b68e0db58489165c0de00024ce5ab3f36b))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/git-deploy docker tag to v1.11.0 ([#189](https://github.com/SocialGouv/gitlab-ci-yml/issues/189)) ([04c4abe](https://github.com/SocialGouv/gitlab-ci-yml/commit/04c4abefc28eafdd11472435a34173ff4538abe7))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/git-deploy docker tag to v1.12.0 ([#195](https://github.com/SocialGouv/gitlab-ci-yml/issues/195)) ([2952563](https://github.com/SocialGouv/gitlab-ci-yml/commit/29525637b485c2bd014ef0d3ae7bd0cdb0a5e865))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/git-deploy docker tag to v1.13.0 ([#213](https://github.com/SocialGouv/gitlab-ci-yml/issues/213)) ([4c26d85](https://github.com/SocialGouv/gitlab-ci-yml/commit/4c26d853ef0f1c71d3e1076b2798e89c629fa0d8))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/helm docker tag to v1.12.0 ([#190](https://github.com/SocialGouv/gitlab-ci-yml/issues/190)) ([c05c2aa](https://github.com/SocialGouv/gitlab-ci-yml/commit/c05c2aab91888b0c6902894e9a66677760fb1452))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/helm docker tag to v1.13.0 ([#214](https://github.com/SocialGouv/gitlab-ci-yml/issues/214)) ([bb1707b](https://github.com/SocialGouv/gitlab-ci-yml/commit/bb1707b61e88e80f34a3587f39f5b813e33e2d8b))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/k8s-ns-killer docker tag to v1.12.0 ([#192](https://github.com/SocialGouv/gitlab-ci-yml/issues/192)) ([fd031c3](https://github.com/SocialGouv/gitlab-ci-yml/commit/fd031c37ca5711581bb113626b14c9914c7350b8))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/k8s-ns-killer docker tag to v1.13.0 ([#215](https://github.com/SocialGouv/gitlab-ci-yml/issues/215)) ([9815b4d](https://github.com/SocialGouv/gitlab-ci-yml/commit/9815b4d7342f52ee3511a963700dc321700f8e74))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kubectl docker tag to v1.12.0 ([#191](https://github.com/SocialGouv/gitlab-ci-yml/issues/191)) ([aeb2a77](https://github.com/SocialGouv/gitlab-ci-yml/commit/aeb2a777eb238398962bf97f8525e24221016f7b))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kubectl docker tag to v1.13.0 ([#216](https://github.com/SocialGouv/gitlab-ci-yml/issues/216)) ([60bc94b](https://github.com/SocialGouv/gitlab-ci-yml/commit/60bc94bd1a7660e0ee2b6af19e6c6b4258932c18))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/pg-cleaner docker tag to v1.12.0 ([#193](https://github.com/SocialGouv/gitlab-ci-yml/issues/193)) ([53111ad](https://github.com/SocialGouv/gitlab-ci-yml/commit/53111adce70afc2a3104ff3ec75cd4a15d761822))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/pg-cleaner docker tag to v1.13.0 ([#217](https://github.com/SocialGouv/gitlab-ci-yml/issues/217)) ([8a0111d](https://github.com/SocialGouv/gitlab-ci-yml/commit/8a0111d7088d0bfc92deb3fc9372af5b017b34f4))
* **deps:** update snyk/snyk-cli docker tag to v1.307.0 ([#187](https://github.com/SocialGouv/gitlab-ci-yml/issues/187)) ([be0fd17](https://github.com/SocialGouv/gitlab-ci-yml/commit/be0fd178904444ca57d5046234e00f10d5329ff4))
* **deps:** update snyk/snyk-cli docker tag to v1.309.0 ([#196](https://github.com/SocialGouv/gitlab-ci-yml/issues/196)) ([66d655a](https://github.com/SocialGouv/gitlab-ci-yml/commit/66d655a2afa48abab792d790f6203120ef3e8444))
* **deps:** update snyk/snyk-cli docker tag to v1.310.0 ([#197](https://github.com/SocialGouv/gitlab-ci-yml/issues/197)) ([fabc5cf](https://github.com/SocialGouv/gitlab-ci-yml/commit/fabc5cf87a743585f8187572e3d52fecea5da37f))
* **deps:** update snyk/snyk-cli docker tag to v1.310.1 ([#198](https://github.com/SocialGouv/gitlab-ci-yml/issues/198)) ([d58b5b0](https://github.com/SocialGouv/gitlab-ci-yml/commit/d58b5b028241aafe987ae06096211864584d78c5))
* **deps:** update snyk/snyk-cli docker tag to v1.311.0 ([#199](https://github.com/SocialGouv/gitlab-ci-yml/issues/199)) ([720a9e7](https://github.com/SocialGouv/gitlab-ci-yml/commit/720a9e7038da19d64c58222c975dbd511ac2282a))
* **deps:** update snyk/snyk-cli docker tag to v1.312.0 ([#200](https://github.com/SocialGouv/gitlab-ci-yml/issues/200)) ([b2e4af1](https://github.com/SocialGouv/gitlab-ci-yml/commit/b2e4af1da2a11e77d95ae0aea271fd75d7ee539d))
* **deps:** update snyk/snyk-cli docker tag to v1.313.0 ([#201](https://github.com/SocialGouv/gitlab-ci-yml/issues/201)) ([80fba75](https://github.com/SocialGouv/gitlab-ci-yml/commit/80fba751675935dcdb66607b73614ab5cb66adf1))
* **deps:** update snyk/snyk-cli docker tag to v1.313.1 ([#202](https://github.com/SocialGouv/gitlab-ci-yml/issues/202)) ([c988f76](https://github.com/SocialGouv/gitlab-ci-yml/commit/c988f76745bddf7239691fcdeb98d7f6dd54760d))
* **deps:** update snyk/snyk-cli docker tag to v1.314.0 ([#203](https://github.com/SocialGouv/gitlab-ci-yml/issues/203)) ([7618a44](https://github.com/SocialGouv/gitlab-ci-yml/commit/7618a44cb72fc6e510f3d05a726733ad996dfe25))
* **deps:** update snyk/snyk-cli docker tag to v1.315.0 ([#205](https://github.com/SocialGouv/gitlab-ci-yml/issues/205)) ([711e613](https://github.com/SocialGouv/gitlab-ci-yml/commit/711e613bae0a3771afedc935376cba3417e0d528))
* **deps:** update snyk/snyk-cli docker tag to v1.315.1 ([#206](https://github.com/SocialGouv/gitlab-ci-yml/issues/206)) ([df936ad](https://github.com/SocialGouv/gitlab-ci-yml/commit/df936ad877fb507a1e9b1aadf50d351138da10a0))
* **deps:** update snyk/snyk-cli docker tag to v1.316.0 ([#207](https://github.com/SocialGouv/gitlab-ci-yml/issues/207)) ([37661c1](https://github.com/SocialGouv/gitlab-ci-yml/commit/37661c159d71480c6d0df0402cd0a02a9055cd7e))
* **deps:** update snyk/snyk-cli docker tag to v1.316.1 ([#208](https://github.com/SocialGouv/gitlab-ci-yml/issues/208)) ([cf532cc](https://github.com/SocialGouv/gitlab-ci-yml/commit/cf532cce9b8292498c9673b25a75c9eb4a35f3da))
* **deps:** update snyk/snyk-cli docker tag to v1.316.2 ([#209](https://github.com/SocialGouv/gitlab-ci-yml/issues/209)) ([cf5c8a9](https://github.com/SocialGouv/gitlab-ci-yml/commit/cf5c8a9d65b71b5e89e95f540e1ba200dd85d577))
* **deps:** update snyk/snyk-cli docker tag to v1.317.0 ([#210](https://github.com/SocialGouv/gitlab-ci-yml/issues/210)) ([ed60965](https://github.com/SocialGouv/gitlab-ci-yml/commit/ed60965559823184057047cab22dca644cccb4ab))
* **deps:** update snyk/snyk-cli docker tag to v1.318.0 ([#211](https://github.com/SocialGouv/gitlab-ci-yml/issues/211)) ([6b69c1a](https://github.com/SocialGouv/gitlab-ci-yml/commit/6b69c1a3c912923885b4c9d081310f178bb28348))
* **deps:** update snyk/snyk-cli docker tag to v1.319.0 ([#218](https://github.com/SocialGouv/gitlab-ci-yml/issues/218)) ([da56ad7](https://github.com/SocialGouv/gitlab-ci-yml/commit/da56ad7c25cceae5bb3ce227f50321fb76f26bac))
* **deps:** update snyk/snyk-cli docker tag to v1.319.1 ([#220](https://github.com/SocialGouv/gitlab-ci-yml/issues/220)) ([93e8479](https://github.com/SocialGouv/gitlab-ci-yml/commit/93e8479dddb2947d39692761c58450318303c0c1))
* **deps:** update snyk/snyk-cli docker tag to v1.319.2 ([#223](https://github.com/SocialGouv/gitlab-ci-yml/issues/223)) ([5c7b2c1](https://github.com/SocialGouv/gitlab-ci-yml/commit/5c7b2c17159453c73b8f2771aeea5560c1116535))
* **deps:** update socialgouv/docker/kubectl docker tag to v1.10.0 ([#183](https://github.com/SocialGouv/gitlab-ci-yml/issues/183)) ([dbb8bed](https://github.com/SocialGouv/gitlab-ci-yml/commit/dbb8bed7977246b77de425283d3cb08461fca1e6))
* **deps:** update socialgouv/docker/pg-cleaner docker tag to v1.10.0 ([#184](https://github.com/SocialGouv/gitlab-ci-yml/issues/184)) ([ab05f15](https://github.com/SocialGouv/gitlab-ci-yml/commit/ab05f15c6dbac13cefb77700a7d48e7e26c6cd48))


### Reverts

* remove review/ prefix on env name ([#219](https://github.com/SocialGouv/gitlab-ci-yml/issues/219)) ([fc3a853](https://github.com/SocialGouv/gitlab-ci-yml/commit/fc3a853493f79213b7181a21dbc02e8bb5ff23fb))

# [15.3.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.2.0...v15.3.0) (2020-04-20)


### Features

* **deps:** update socialgouv/docker/azure-db docker tag to v1.10.0 ([#179](https://github.com/SocialGouv/gitlab-ci-yml/issues/179)) ([392333b](https://github.com/SocialGouv/gitlab-ci-yml/commit/392333b516321f97b8ea014273f39ce4c91be996))
* **deps:** update socialgouv/docker/git-deploy docker tag to v1.10.0 ([#180](https://github.com/SocialGouv/gitlab-ci-yml/issues/180)) ([1ea7fd2](https://github.com/SocialGouv/gitlab-ci-yml/commit/1ea7fd218430546acb945687be86006ba33ce1e4))
* **deps:** update socialgouv/docker/helm docker tag to v1.10.0 ([#181](https://github.com/SocialGouv/gitlab-ci-yml/issues/181)) ([896f3a7](https://github.com/SocialGouv/gitlab-ci-yml/commit/896f3a7d99008fb20515df0422fa6f92a5c63eca))
* **deps:** update socialgouv/docker/k8s-ns-killer docker tag to v1.10.0 ([#182](https://github.com/SocialGouv/gitlab-ci-yml/issues/182)) ([eb0adaa](https://github.com/SocialGouv/gitlab-ci-yml/commit/eb0adaa77da2aef13300552f89469667593b8f53))

# [15.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.1.0...v15.2.0) (2020-04-20)


### Features

* **azure-db:** enable hstore extension ([#156](https://github.com/SocialGouv/gitlab-ci-yml/issues/156)) ([9695754](https://github.com/SocialGouv/gitlab-ci-yml/commit/9695754230606460ee4375effef2196b3ae9bbe6))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/azure-db docker tag to v1.9.0 ([#171](https://github.com/SocialGouv/gitlab-ci-yml/issues/171)) ([5bafb42](https://github.com/SocialGouv/gitlab-ci-yml/commit/5bafb428bfb1c99eba606193d10efb1fc52bb666))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/git-deploy docker tag to v1.9.0 ([#172](https://github.com/SocialGouv/gitlab-ci-yml/issues/172)) ([647eb54](https://github.com/SocialGouv/gitlab-ci-yml/commit/647eb54ce91cf06ad85a8ea3adce9053d0cade09))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/helm docker tag to v1.9.0 ([#173](https://github.com/SocialGouv/gitlab-ci-yml/issues/173)) ([72b2d60](https://github.com/SocialGouv/gitlab-ci-yml/commit/72b2d608bc7337470c28609f9d8046e727feb42d))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/k8s-ns-killer docker tag to v1.9.0 ([#174](https://github.com/SocialGouv/gitlab-ci-yml/issues/174)) ([ec64086](https://github.com/SocialGouv/gitlab-ci-yml/commit/ec640861f2b35d2a462d8f016269aae57d77c662))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/kubectl docker tag to v1.9.0 ([#176](https://github.com/SocialGouv/gitlab-ci-yml/issues/176)) ([b390ca3](https://github.com/SocialGouv/gitlab-ci-yml/commit/b390ca3cc4519a6747313febb09cf406afa3b196))
* **deps:** update registry.gitlab.factory.social.gouv.fr/socialgouv/docker/pg-cleaner docker tag to v1.9.0 ([#175](https://github.com/SocialGouv/gitlab-ci-yml/issues/175)) ([f42ef2c](https://github.com/SocialGouv/gitlab-ci-yml/commit/f42ef2c0d0820f9d2e359b2b5f5093e6cfb0c93a))
* **deps:** update snyk/snyk-cli docker tag to v1.306.0 ([#177](https://github.com/SocialGouv/gitlab-ci-yml/issues/177)) ([e347f5f](https://github.com/SocialGouv/gitlab-ci-yml/commit/e347f5fc69c004b9418e66e8a04df4e5df1e5044))

# [15.1.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.0.1...v15.1.0) (2020-04-16)


### Features

* **deps:** update socialgouv/docker/helm docker tag to v1.8.0 ([#167](https://github.com/SocialGouv/gitlab-ci-yml/issues/167)) ([417fa0c](https://github.com/SocialGouv/gitlab-ci-yml/commit/417fa0c466a2f305ab67a150340b5ae77b4d9f8e))
* **deps:** update socialgouv/docker/k8s-ns-killer docker tag to v1.8.0 ([#168](https://github.com/SocialGouv/gitlab-ci-yml/issues/168)) ([452fd5b](https://github.com/SocialGouv/gitlab-ci-yml/commit/452fd5b2c62db9c697de7a36dc8f9cf072506978))

## [15.0.1](https://github.com/SocialGouv/gitlab-ci-yml/compare/v15.0.0...v15.0.1) (2020-04-15)


### Bug Fixes

* **deploy_app:** helm just is already part of socialgouv/docker/helm ([a168dcd](https://github.com/SocialGouv/gitlab-ci-yml/commit/a168dcdf16fae79fedbf53bf6e87fe66e3f2741f))
* **deps:** update socialgouv/docker/kubectl docker tag to v1.5.0 ([ee13d70](https://github.com/SocialGouv/gitlab-ci-yml/commit/ee13d70fdbb9aef893e45287831f2e565cd24a69))

# [15.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v14.0.0...v15.0.0) (2020-04-14)


* feat(autodevops)!: allow existing jobs extend (#148) ([f189b17](https://github.com/SocialGouv/gitlab-ci-yml/commit/f189b17c1878ef58e34441f432e60e7f9551151f)), closes [#148](https://github.com/SocialGouv/gitlab-ci-yml/issues/148)
* feat(autodevops)!: centralize environment in autodevops file (#145) ([f9560ec](https://github.com/SocialGouv/gitlab-ci-yml/commit/f9560ec699a14da49343312b8a7929d6fc9e8538)), closes [#145](https://github.com/SocialGouv/gitlab-ci-yml/issues/145)


### BREAKING CHANGES

* **feat(autodevops)!: allow existing jobs extend**

This might be a breaking change.
* **feat(autodevops)!: centralize environment in autodevops file**

Our autodevops now drives the environment info.

```diff

Azure db stage:
  extends: .base_azure_db_stage
+  environment:
+    name: ${CI_COMMIT_REF_NAME}-dev

Drop azure db:
  extends: .base_drop_azure_db
+  environment:
+    name: ${CI_COMMIT_REF_NAME}-dev

Create namespace stage:
  extends: .base_create_namespace_stage
+  environment:
+    name: ${CI_COMMIT_REF_NAME}-dev

Delete useless k8s ns stage:
  extends: .base_delete_useless_k8s_ns_stage
+  environment:
+    name: ${CI_COMMIT_REF_NAME}-dev

Delete useless managed postgresql:
  extends: .base_delete_useless_managed_postgresql_stage
+  environment:
+    name: ${CI_COMMIT_REF_NAME}-dev
```

# [14.0.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v13.2.0...v14.0.0) (2020-04-09)


* fix(app)!: do not override set production values (#126) ([339d794](https://github.com/SocialGouv/gitlab-ci-yml/commit/339d79434813c7d890bb3304be60a98db639c3c8)), closes [#126](https://github.com/SocialGouv/gitlab-ci-yml/issues/126)


### BREAKING CHANGES

* **app** do not override set production values  
    As we use the production ready values in `values.socialgouv.yaml` of https://github.com/SocialGouv/helm-charts/tree/v6.0.0/charts/app, we only need to override the render when not in production

# [13.2.0](https://github.com/SocialGouv/gitlab-ci-yml/compare/v13.1.0...v13.2.0) (2020-04-09)


### Features

* add mattermost notification base job ([#125](https://github.com/SocialGouv/gitlab-ci-yml/issues/125)) ([a456b95](https://github.com/SocialGouv/gitlab-ci-yml/commit/a456b95151ed0046229d1dc97a6bba4bdef3ba76))
* **snyk_scan:** add snyk.io docker image scan ([#124](https://github.com/SocialGouv/gitlab-ci-yml/issues/124)) ([1fff932](https://github.com/SocialGouv/gitlab-ci-yml/commit/1fff932dad61e94e5e8e1a47d60980f59332a122))

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
    - We recommend that review environments are prefixed `review` : `name: ${CI_COMMIT_REF_NAME}-dev`
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
