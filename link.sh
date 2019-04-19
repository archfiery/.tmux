#!/bin/bash

function link() {
  fn=$1

  if [ -L "${HOME}/.${fn}" ]; then
    rm "$HOME/.${fn}"
  elif [ -f "${HOME}/.${fn}" ]; then
    uuid=$(uuidgen -r)
    backup_fn="${HOME}/.${fn}_${uuid}.backup"
    mv "${HOME}/.${fn}" ${backup_fn}
  else
    echo -n ""
  fi

  ln -f -s "$(pwd)/${fn}" "${HOME}/.${fn}"
}

echo "create new symbolic links"
link "tmux.conf"
link "tmux.conf.local"
