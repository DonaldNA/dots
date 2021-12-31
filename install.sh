#!/bin/bash

declare -a dots

dots=(".vimrc" ".bashrc" ".tmux.conf" ".inputrc" ".bash_aliases")

## Check if a directory does not exist ###
echo "Checking backup dir exists..."
if [ ! -d "$HOME"/dots/backup ]
then
    echo "Creating backup dir"
    mkdir "$HOME"/dots/backup
fi

# Backingup previous configs and deploying updated ones...
for i in "${dots[@]}"
do
  echo "Working on $i"
  prod_dot="$HOME"/"$i"

  today=$(date +"%Y-%m-%d")
  cp "$prod_dot" "$HOME"/dots/backup/"$i"_"$today".bak
  rm "$prod_dot"
  ln -s "$HOME"/dots/"$i" "$HOME"
done



