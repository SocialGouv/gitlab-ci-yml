#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

f1() {
  if [ $# -lt 1 ]; then
    f1 --help
    return
  fi

  local COMMAND
  COMMAND="${1-}"
  shift

  case $COMMAND in
    'help' | '--help')
      f1_help
    ;;
    'version' | '--version')
      f1_version
    ;;
    *)
      >&2 nvm --help
      return 127
    ;;
  esac
}

#

f1_echo() {
  command printf %s\\n "$*" 2>/dev/null
}

f1_cd() {
  # shellcheck disable=SC1001,SC2164
  \cd "$@"
}

f1_err() {
  >&2 f1_echo "$@"
}

f1_cache_dir() {
  f1_echo "/tmp/f1"
}

f1_help() {
  F1_VERSION="$(f1_version)"

  f1_echo
  f1_echo "🏎️ (v${F1_VERSION})"
  f1_echo
  f1_echo ' 🏎️ Caching at F1 speed here 🏎️'
  f1_echo
  f1_echo 'Usage:'
  f1_echo '  f1 --help                                Show this message'
  f1_echo '  f1 --version                             Print out the installed version of f1'
}

f1_version() {
  echo "v8.0.0"
}

#
# Unsets the various functions defined
# during the execution of the script
#
f1_reset() {
  unset -f  f1_echo f1_cd f1_err \
    f1_reset
}

#

} # this ensures the entire script is downloaded #

