#!/bin/bash

declare -a dots

dots=(".git-prompt" ".vimrc" ".bashrc" ".tmux.conf" ".inputrc")

## Check if a directory does not exist ###
echo "Checking backup dir exists..."
if [ ! -d "$HOME"/dots/backup ]
then
    echo "Creating backup dir"
    mkdir "$HOME"/dots/backup
fi

for i in "${dots[@]}"
do
  echo "Working on $i"
  prod_dot="$HOME"/"$i"

  #TODO Add datestamp to new filename
  today=$(date +"%Y-%m-%d")
  cp "$prod_dot" "$HOME"/dots/backup/"$i"_"$today".bak
  rm "$prod_dot"
  ln -s "$HOME"/dots/"$i" "$HOME"
done


## Check if a file does not exist ###
echo "Checking backup dir exists..."
if [ ! -f /usr/bin/local/z.sh ]
then
    echo "Getting z.sh"
    wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O /usr/bin/local/z.sh
fi
