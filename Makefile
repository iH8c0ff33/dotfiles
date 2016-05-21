SHELL=/usr/bin/bash

all: init_submodules link

init_submodules:
	git submodule update --init --recursive

link: link_systemd_system link_systemd_user link_zsh

link_systemd_system:
	./bin/link_systemd_system.sh

link_systemd_user:
	./bin/link_systemd_user.sh

link_zsh:
	./bin/link_zsh.sh
