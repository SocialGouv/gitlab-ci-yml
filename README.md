# gitlab-ci-yml

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
