#!/usr/bin/env bash

#
# Inspired by https://github.com/nvm-sh/nvm/blob/v0.35.2/install.sh
#

{ # this ensures the entire script is downloaded #

#

f1_version() {
  command printf %s "${F1_VERSION:-"v8.0.0"}"
}

f1_do_install() {
  local INSTALL_DIR
  INSTALL_DIR="$(f1_install_dir)"

  # Downloading to $INSTALL_DIR
  mkdir -p "$INSTALL_DIR"

  if [ -f "$INSTALL_DIR/f1.sh" ]; then
    echo "=> f1 is already installed in $INSTALL_DIR, trying to update the script"
  else
    echo "=> Downloading f1 as script to '$INSTALL_DIR'"
  fi

  f1_install_from_tarball

  # Source f1
  # shellcheck source=/dev/null
  \. "$(f1_install_dir)/f1.sh"

  f1_reset

  echo "=> Installation done"
}

#

f1_download() {
  if f1_has "curl"; then
    curl -Ls "$1"
  elif f1_has "wget"; then
    eval wget -q "$1" -O -
  else
    echo >&2 "Failed to find either curl not wget"
    return 1
  fi
}

f1_has() {
  type "$1" > /dev/null 2>&1
}

f1_install_dir() {
  command printf %s "${F1_DIR:-"$HOME/.f1"}"
}

f1_install_from_tarball() {
  local INSTALL_DIR
  INSTALL_DIR="$(f1_install_dir)"
  local F1_SOURCE_LOCAL
  F1_SOURCE_LOCAL="$(f1_source)"

  # Ensure that the install folder exists
  mkdir -p ${INSTALL_DIR}

  sleep 1s || {
    echo >&2 "Failed to download ???"
    return 1
  } &

  f1_download ${F1_SOURCE_LOCAL} | \
    tar -xz -C ${INSTALL_DIR} || {
    echo >&2 "Failed to download or extract '$F1_SOURCE_LOCAL'"
    return 1
  } &

  # Wait for all sources to be downloaded
  for job in $(jobs -p | command sort)
  do
    wait "$job" || return $?
  done
}

#
# Outputs the location to F1 source
#
f1_source() {
  # https://github.com/SocialGouv/gitlab-ci-yml/archive/master.zip
  # https://github.com/SocialGouv/gitlab-ci-yml/archive/v8.0.0.tar.gz
  echo "https://github.com/SocialGouv/gitlab-ci-yml/archive/$(f1_version).tar.gz"
}

#
# Unsets the various functions defined
# during the execution of the installation script
#
f1_reset() {
  unset -f f1_do_install \
    f1_download f1_has f1_install_dir f1_install_from_tarball f1_source f1_version \
    f1_reset
}

#

[ "_${F1_ENV}" = "_testing" ] || f1_do_install

} # this ensures the entire script is downloaded #

