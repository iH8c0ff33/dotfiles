#!/bin/bash
echo ---SYMLINKING FONTCONFIG---
[ -e ~/.config/fontconfig ] || mkdir -p ~/.config/fontconfig ]
[ -e ~/.config/fontconfig/fonts.conf ] && echo fonts.conf already exists || ln -s $PWD/font-config ~/.config/fontconfig/fonts.conf
