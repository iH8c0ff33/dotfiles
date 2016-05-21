#!/bin/bash
[ -e ~/.zprezto ] && echo .zprezto already exists || ln -s $PWD/zsh ~/.zprezto
for i in zsh/runcoms/z*
do
  [ -e ~/.$(basename $i) ] && echo $i alread exists || ln -s $PWD/$i ~/.$(basename $i)
done
