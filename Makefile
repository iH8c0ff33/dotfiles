SHELL=/usr/bin/bash

all: init_submodules link

init_submodules:
	git submodule update --init --recursive

link: link_systemd_user link_zsh link_fontconfig link_tern link_fonts link_xres link_colors

link_systemd_system:
	./bin/link_systemd_system.sh

link_systemd_user:
	./bin/link_systemd_user.sh

link_zsh:
	./bin/link_zsh.sh

link_fontconfig:
	./bin/link_fontconfig.sh

link_tern:
	./bin/link_tern.sh

link_fonts:
	[ -e ~/.fonts ] && echo .fonts already exists || ln -s $$PWD/fonts ~/.fonts

link_xres:
	[ -e ~/.Xresources ] && echo .Xresources already exists || ln -s $$PWD/Xresources ~/.Xresources

link_colors:
	[ -e ~/.colors ] || mkdir ~/.colors ; [ -e ~/.colors/dircolors.solarized ] && \
	echo dircolors.solarized already exists || ln -s $$PWD/dircolors.solarized ~/.colors/
