#!/bin/bash
echo ---SYMLINKING FONTCONFIG---
[ -e ~/.config/fontconfig ] || mkdir -p ~/.config/fontconfig
for i in fontconfig/*
do
  [ -e ~/.config/fontconfig/$(basename $i) ] && echo $(basename $i) already exists || ln -s $PWD/$i ~/.config/fontconfig/
done
