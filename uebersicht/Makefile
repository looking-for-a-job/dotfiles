src:=widgets
dst:=~/Library/Application\ Support/Übersicht/widgets

all:
	#make brew
	make sync
	# make create
	make restart
	# make refresh

brew:
	test -d /Applications/Übersicht.app || brew cask install ubersicht

sync:
	rsync --delete -a $(src)/ $(dst)

create:
	python widgets/create.py

stop:
	@ # killall Übersicht not works (not ascii)
	ps -ax | grep -v grep | grep Übersicht.app | awk '{print $1}' | xargs kill -9 2> /dev/null;:

restart:
	killall Übersicht;:
	open -a Übersicht

refresh:
	osascript -e 'tell application id "tracesOf.Uebersicht" to refresh'
