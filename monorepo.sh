#!/usr/bin/env sh

MONOREPO_CACHE_FOLDER=${MONOREPO_CACHE_FOLDER:="/tmp/monorepo"}
MONOREPO_IGNORE=${MONOREPO_IGNORE:=""}

#

main() {
  for arg in "$@"
  do
    case $arg in
      has-changed)
        shift
        has_changed "$@"
        ;;
      skip)
        shift
        skip "$@"
        ;;
    esac
  done
}

has_changed() {
  local cache_folder=${MONOREPO_CACHE_FOLDER}
  local ignore=${MONOREPO_IGNORE}

  local silent
  local verbose
  local folders
  folders=""

  while [[ "$#" -gt 0 ]];
    do
    case "${1}" in
      --cache-folder)
        cache_folder="${2}"
        shift 2
      ;;
      --find-ignore)
        ignore="${2}"
        shift 2
      ;;
      --silent)
        silent="true"
        shift
      ;;
      --verbose)
        verbose="true"
        shift
      ;;
      *)
        folders="${folders} ${1}"
        shift
      ;;
      --)
        shift
        break
      ;;
    esac
  done

  #

  mkdir -p "${cache_folder}"

  local previous_hash
  previous_hash=$(
    cat ${cache_folder}/hash 2> /dev/null ||
    echo "________________________________________"
  )

  local hash_cache


  if [[ -n "${verbose+x}" ]]; then
    echo "List :"
    find ${folders} \
        -not -path "${ignore}" \
        -type f |
      xargs sha1sum
  fi

  hash_cache=$(
    find ${folders} \
      -not -path "${ignore}" \
      -type f |
    xargs sha1sum |
    sha1sum |
    rev | cut -c 4- | rev |
    tee "${cache_folder}/hash"
  )


  if [[ -z "${silent+x}" ]]; then
    echo ""
    echo "Folders hash diff:"
    echo "  -${previous_hash} : ${folders}"
    echo "  +${hash_cache} : ${folders}"
    echo ""
  fi


  if [[ "${previous_hash}" == "${hash_cache}" ]]; then
    touch "${cache_folder}/skip"
    exit 0
  fi

  # return nonzero if there are any changes
  exit 1
}

skip() {
  local cache_folder="${MONOREPO_CACHE_FOLDER}"

  while [[ "$#" -gt 0 ]];
    do
    case "${1}" in
      --cache-folder)
        cache_folder="${2}"
        shift 2
      ;;
      --)
        shift
        break
      ;;
    esac
  done

  if [ -f "${cache_folder}/skip" ]; then
    echo "Found ${cache_folder}/skip";
    echo "Skip !";
    exit 0;
  fi

  exit 1;
}

main "$@"
