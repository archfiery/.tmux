#!/bin/bash

if [ -f ${HOME}/.tmux.conf ]; then
  uuid=$(uuidgen -r)
  backup_fn="${HOME}/.tmux_${uuid}_backup.conf"
  mv "${HOME}/.tmux.conf" ${backup_fn}
elif [ -L "${HOME}/.tmux.conf" ]; then
  rm $HOME/.tmux.conf
fi

ln -s "$(pwd)/tmux.conf" "${HOME}/.tmux.conf"

if [ -f "${HOME}/.tmux.conf.local" ]; then
  uuid=$(uuidgen -r)
  backup_fn="${HOME}/.tmux_${uuid}_backup.conf.local"
  mv "${HOME}/.tmux.conf.local" ${backup_fn}
else
  rm "${HOME}/.tmux.conf.local"
fi

ln -s "$(pwd)/tmux.conf.local" "${HOME}/.tmux.conf.local"

