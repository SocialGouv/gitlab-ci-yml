#!/usr/bin/env bash

MINIO=${MINIO:="https://minio.fabrique.social.gouv.fr/minio"}

function checking_cache() {
  local file="${1}"
  local url=${MINIO}/upload/${BUCKET}/${CI_PROJECT_PATH}/${file}

  echo "Downloading cache.tar.gz from ${url}"
  getS3 "${file}" -s -o cache.tar.gz

  echo "Verify cache.tar.gz"
  if ! tar tf cache.tar.gz &> /dev/null ; then
    echo "Invalid cache.tar.gz"
    return 1
  fi

  echo "Extracting cache.tar.gz"
  time tar xzf cache.tar.gz
  echo "Successfully extracted cache"
}

function creating_cache() {
  local file=${1}
  shift;
  local folders=${@}

  echo "Creating ${file} from ${folders}"
  time tar czf ${file} ${folders}
  echo ""

  if [[ -f cache.tar.gz ]]; then
    if diff -s cache.tar.gz ${file}; then
      echo "No changes detected"
      return
    fi
  fi

  local url=${MINIO}/upload/${BUCKET}/${CI_PROJECT_PATH}/${CI_COMMIT_REF_SLUG}/${file}
  echo "Uploading ${file} to ${url}"
  putS3 "${file}" "${CI_COMMIT_REF_SLUG}/${file}"
  echo "${file}" > URL
  echo "Successfully uploaded"
}
