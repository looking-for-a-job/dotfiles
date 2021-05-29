XDG_DATA_HOME:= $(or $(XDG_DATA_HOME),~/.local/share)
DST:=$(XDG_DATA_HOME)/tts

all:
	rsync --delete -a $(CURDIR)/ $(DST)
	find $(DST) -name "*.txt" | xargs -I{} speech-cache -f {} -v Milena
	find $(DST) -name "*.txt" | xargs -I{} speech-cache -f {} -v Yuri
