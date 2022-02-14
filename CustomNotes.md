```bash
# alias t='tmux attach || tmux new -C $HOME'

function t {
  if [[ $1 == 'home' ]]; then
    tmux attach || tmux new -c $HOME
  else
    tmux attach || tmux new
  fi
}

```
