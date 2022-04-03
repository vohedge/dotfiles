##
# Auto venv activate/deactivate
# 
# - Auto activate venv when enter python project
# - Auto deactivate venv when leave python project
# - Keep activate venv when open tmux
# 
# Requirements:
# - This script requires ".venv" dir for venv
# 

function cd() {
  builtin cd $1

  # Auto deactivate Python venv
  if [[ ! -z "${VIRTUAL_ENV}" ]]; then
    local current_dir=$(pwd)
    local project_root=$(dirname $VIRTUAL_ENV)
    local project_name=$(basename $(dirname ${VIRTUAL_ENV}))

    if [[ $current_dir != $project_root* ]]; then
      if deactivate; then
        echo "venv:${project_name} has deactivated."
      else
        echo "Deactivating faild."
      fi
    fi
  fi

  # Auto activate Python venv
  if [[ -z "${VIRTUAL_ENV}" && -d "./.venv" ]]; then
    if source ./.venv/bin/activate; then
      echo "VIRTUAL_ENV:"
      echo "${VIRTUAL_ENV}"
    else
      echo "venv activating has faild."
    fi
  fi

  echo ""

  # Auto pwd
  echo "Current Directory:"
  pwd
  echo ""

  # Auto ls
  echo "Files and directories:"
  ls -al
  echo ""
}

# Auto activate when open tmux
if [ -n "${VIRTUAL_ENV}" ]; then
  source $VIRTUAL_ENV/bin/activate;
fi

# Disable venv default prompt
VIRTUAL_ENV_DISABLE_PROMPT=1
