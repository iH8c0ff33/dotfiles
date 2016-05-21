#!/bin/bash
echo ---SYMLINKING SYSTEMD/USER---
[ -e ~/.config/systemd/user ] || mkdir -p ~/.config/systemd/user
for i in systemd_user/*
do
  [ -e ~/.config/systemd/user/$(basename $i) ] && echo $(basename $i) already exists || ln -s $PWD/$i ~/.config/systemd/user/
done
