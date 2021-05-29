USERNAME:=$(shell git config user.name)
XDG_CONFIG_HOME:= $(or $(XDG_CONFIG_HOME),~/.config)

all:
	make ln
	make save

ln:
	ln -fs $(CURDIR)/repo-config $(XDG_CONFIG_HOME)/repo-config

save:
	find ~/git/$(USERNAME) -type d -maxdepth 1 -exec sh -c 'test -e "{}" && /usr/local/bin/repo-config save "{}"' \;
