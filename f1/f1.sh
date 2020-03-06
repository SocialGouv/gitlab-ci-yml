#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #

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

#
# Unsets the various functions defined
# during the execution of the script
#
f1_reset() {
  unset -f f1_reset f1_echo f1_cd f1_err
}

#

[ "_${F1_ENV}" = "_testing" ] || f1_cache_dir

} # this ensures the entire script is downloaded #

