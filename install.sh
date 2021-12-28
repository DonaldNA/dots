#!/bin/bash

declare -a dots

dots=(".vimrc" ".bashrc" ".tmux.conf" ".inputrc")


rmdir "$HOME"/dots/backup
mkdir "$HOME"/dots/backup

for i in "${dots[@]}"
do
  echo "Working on $i"
  prod_dot="$HOME"/"$i"
  cp "$prod_dot" "$HOME"/dots/backup/"$i".bak
  rm "$prod_dot"
  ln -s "$HOME"/dots/"$i" "$HOME"
done

