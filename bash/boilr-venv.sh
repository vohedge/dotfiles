function init_venv() {
  echo ""
  echo "Initializing Python venv..."
  python -m venv .venv  
  source .venv/bin/activate
  echo "Done!"
}

function boilr() {
  command boilr $1 $2 $3 $4

  if [[ "$1" = "template" ]] && [[ "$2" = "use" ]] && [[ "$3" = "python-project" ]]; then
    init_venv
  fi

  if [[ "$1" = "template" ]] && [[ "$2" = "use" ]] && [[ "$3" = "jupyter-kernel" ]]; then
    init_venv
  fi
}
