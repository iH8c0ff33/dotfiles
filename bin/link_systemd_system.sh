#!/bin/bash
for i in systemd_system/*
do
  [ -e /etc/systemd/system/$(basename $i) ] && echo $i already exists || sudo ln -s $PWD/$i /etc/systemd/system/
  [ -e /etc/systemd/system/multi-user.target.wants$(basename $i) ] && echo $i already enabled || sudo ln -s $PWD/$i /etc/systemd/system/multi-user.target.wants/
done
