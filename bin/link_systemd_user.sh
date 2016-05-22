#!/bin/bash
echo ---SYMLINKING SYSTEMD/USER---
[ -e ~/.config/systemd/user ] || mkdir -p ~/.config/systemd/user
[ -e ~/.config/systemd/user/default.target.wants ] || mkdir -p ~/.config/systemd/user/default.target.wants
for i in systemd_user/*
do
  [ -e ~/.config/systemd/user/$(basename $i) ] && echo $(basename $i) already exists || ln -s $PWD/$i ~/.config/systemd/user/
  [ -e ~/.config/systemd/user/default.target.wants/$(basename $i) ] && echo $(basename $i) already enabled || ln -s $PWD/$i ~/.config/systemd/user/default.target.wants/
done
