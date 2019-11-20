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

# [.base_semantic_release_stage](./base_semantic_release_stage.yml)

## Usage 

```yaml

---
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/base_sementic_release_stage.yml"
  # or
  # - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/<version>/base_sementic_release_stage.yml"

#

Release:
  extends: .base_semantic_release_stage

# or

Release:
  extends: .base_semantic_release_stage
  variables:
    SEMANTIC_RELEASE_PLUGINS: "@semantic-release/changelog @semantic-release/git"
  
```
