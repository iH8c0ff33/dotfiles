#!/bin/bash
echo ---SYMLINKING SYSTEMD/SYSTEM---
for i in systemd_system/*
do
  [ -e /etc/systemd/system/$(basename $i) ] && echo $(basename $i) already exists || sudo ln -s $PWD/$i /etc/systemd/system/
  [ -e /etc/systemd/system/multi-user.target.wants/$(basename $i) ] && echo $(basename $i) already enabled || sudo ln -s $PWD/$i /etc/systemd/system/multi-user.target.wants/
done
