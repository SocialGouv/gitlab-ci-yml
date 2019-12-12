#!/usr/bin/env bash

function git_files_changes() {
  echo "Check if ${1} changes"
  echo "git diff --stat HEAD..origin/${CI_DEFAULT_BRANCH}"
  [[ -n "$TRACE" ]] && git diff --stat HEAD..origin/${CI_DEFAULT_BRANCH}
  git diff --stat HEAD..origin/${CI_DEFAULT_BRANCH} | head -n -1 | cut -d' ' -f2 | grep $1
}
