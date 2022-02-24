# SSH
# https://qiita.com/kamykn/items/9a831862038efa4e9f8f
hosts() {
  local sshLoginHost
  sshLoginHost=`cat ~/.ssh/config | grep -i ^host | awk '{print $2}' | fzf`

  if [ "$sshLoginHost" = "" ]; then
      # ex) Ctrl-C.
      return 1
  fi

  ssh ${sshLoginHost}
}
# alias hosts='fssh'
