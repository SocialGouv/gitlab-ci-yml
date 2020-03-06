#!/usr/bin/env bash

MINIO=${MINIO:="https://minio.fabrique.social.gouv.fr/minio"}
BUCKET=${BUCKET:="gitlab-runner"}

function tokenS3() {
  test -z "${S3KEY}" && echo "⛔ Missin S3KEY variable" && exit 42
  test -z "${S3SECRET}" && echo "⛔ Missin S3SECRET variable" && exit 42

  curl -Ss \
    -H 'Content-Type: application/json' \
    --data-binary '{"id":1,"jsonrpc":"2.0","params":{"username":"'${S3KEY}'","password":"'${S3SECRET}'"},"method":"Web.Login"}'\
    ${MINIO}'/webrpc' \
  > json

  cat json | sed "s/{.*\"token\":\"\([^\"]*\).*}/\1/g" > TOKEN_S3

}

function putS3() {
  local file=$1
  shift;
  local path=$1
  shift;

  tokenS3

  curl -Ss \
    -w '\nEstablish Connection: %{time_connect}s\nTTFB: %{time_starttransfer}s\nTotal: %{time_total}s\n' \
    -H 'Authorization: Bearer '$(cat TOKEN_S3) \
    -H 'User-Agent: Mozilla/5.0 (I am cURL ^^)' \
    -T ${file} \
    -X PUT \
    "$@" \
    ${MINIO}'/upload/'${BUCKET}'/'${CI_PROJECT_PATH}'/'${path}
}

function getS3() {
  local path=$1
  shift;

  tokenS3

  curl -Ss \
    -w '\nEstablish Connection: %{time_connect}s\nTTFB: %{time_starttransfer}s\nTotal: %{time_total}s\n' \
    -H 'User-Agent: Mozilla/5.0 (I am cURL ^^)' \
    "$@" \
    ${MINIO}'/download/'${BUCKET}'/'${CI_PROJECT_PATH}'/'${path}'?token='$(cat TOKEN_S3)
}
