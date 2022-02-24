##
# ghq-fzf
# https://tottoto.net/select-ghq-project-with-fzf-on-bash/
fzf_ghq() {
  local project_name=$(ghq list | sort | $(__fzfcmd))
  if [ -n "$project_name" ]; then
    local project_full_path=$(ghq root)/$project_name
    local project_relative_path="~/$(realpath --relative-to=$HOME $project_full_path)"
    READLINE_LINE="cd $project_relative_path"
    READLINE_POINT="${#READLINE_LINE}"
  fi
}
bind -x '"\C-g": fzf_ghq'
