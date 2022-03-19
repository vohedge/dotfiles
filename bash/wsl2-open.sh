function open(){
  if [[ $# -eq 0 ]]; then
    powershell.exe -Command start .
  else
    powershell.exe -Command start $1
  fi
}
