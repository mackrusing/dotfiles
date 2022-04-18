#!/usr/bin/env bash

repo_dir=$(pwd)
home_dotfiles=".zsh .zshrc .tmux .editorconfig"
config_dotfiles=".neofetch .nvim"

# create backup folder
backup_dir_num=1

while [ -d "$HOME/.dotfiles_old$backup_dir_num" ]
do 
  backup_dir_num=$((backup_dir_num + 1))
done

backup_dir="$HOME/.dotfiles_old$backup_dir_num"
mkdir $backup_dir && mkdir "$backup_dir/.config"

# copy existing files to backup
for home_dot in ${home_dotfiles}; do
  env cp -rf "$HOME/$home_dot" "$backup_dir"
  echo "Copying $HOME/$home_dot -> $backup_dir"
done

for config_dot in ${config_dotfiles//.}; do 
  env cp -rf "$HOME/.config/$config_dot" "$backup_dir/.config"
  echo "Copying $HOME/.config/$config_dot -> $backup_dir/.config"
done

# symlink files and replace existing
for home_dot in ${home_dotfiles}; do
  env rm -rf "$HOME/${home_dot}"
  env ln -fs "$repo_dir/${home_dot}" "$HOME/"
done

mkdir -p "$HOME/.config"

for config_dot in ${config_dotfiles}; do
  env rm -rf "$HOME/.config/${config_dot[*]//.}"
  env ln -fs "$repo_dir/${config_dot}" "$HOME/.config/${config_dot[*]//.}"
done

