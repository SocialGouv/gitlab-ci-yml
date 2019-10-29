# gitlab-ci-yml

Use like this in your `.gitlab-ci.yml` :

```yml
---
include:
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/github-deployments.yml"
  - "https://raw.githubusercontent.com/SocialGouv/gitlab-ci-yml/master/register-stage.yml"
```

## github-deployments

| Stage                     | usage                    |
| ------------------------- | ------------------------ |
| Prepare                   | get github deployment id |
| Send Url to GitHub (dev)  | send dev url             |
| Send Url to GitHub (prod) | send prod url            |

| Env var               | example     |
| --------------------- | ----------- |
| DEV_ENVIRONMENT_NAME  | dev.factory |
| PROD_ENVIRONMENT_NAME | incubateur  |

## register-stage

| Stage        | usage                 |
| ------------ | --------------------- |
| Registration | register docker image |

| Env var           | example |
| ----------------- | ------- |
| IMAGE_NAME        |         |
| DOCKER_BUILD_ARGS |         |
