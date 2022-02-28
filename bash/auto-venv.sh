##
# Auto venv activate/deactivate
# This script requires ".venv" dir for venv
function cd() {
  builtin cd $1

  # -z: checks whether environment variable has length equal to zero
  if [[ ! -z "${VIRTUAL_ENV}" ]]; then
    local current_dir=$(pwd)
    local project_root=$(dirname $VIRTUAL_ENV)

    if [[ $current_dir != $project_root* ]]; then
      echo  "Deactivating venv..."
      if deactivate; then
        echo "Deactivating successful!"
      else
        echo "Deactivating faild."
      fi
    fi
  fi

  if [[ -z "${VIRTUAL_ENV}" && -d "./.venv" ]]; then
    echo "Activating venv..."
    if source ./.venv/bin/activate; then
      echo "Activating successful!"
    else
      echo "Activating faild."
    fi
  fi
}
