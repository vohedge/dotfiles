function open(){
  if [[ $# -eq 0 ]]; then
    # cmd.exe /c start $(wslpath -w .)
    cmd.exe /c start .
  else
    # cmd.exe /c start $(wslpath -w $1)
    cmd.exe /c start $1
  fi
}
