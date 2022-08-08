##
# ghq-fzf
# https://tottoto.net/select-ghq-project-with-fzf-on-bash/
fzf_boilr() {
  local template_name=$(boilr template list --dont-prettify | tr " " "\n" | sort | $(__fzfcmd))
  if [ -n "$template_name" ]; then
    READLINE_LINE="boilr template use $template_name ."
    READLINE_POINT="${#READLINE_LINE}"
  fi
}
bind -x '"\C-b": fzf_boilr'
