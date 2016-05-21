#!/bin/bash
[ -e ~/.config/systemd/user ] || mkdir -p ~/.config/systemd/user
for i in systemd_user/*
do
  [ -e ~/.config/systemd/user/$(basename $i) ] && echo $i already exists || ln -s $PWD/$(basename $i) ~/.config/systemd/user/
done
