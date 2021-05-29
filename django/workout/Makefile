all:
	make cp
	make requires
	make unload
	make load
	make list
	make browse

browse:
	bash -l -c "open http://\$$WORKOUT_ADDRPORT"

cp:
	bash cp.sh

requires:
	pip install -r requires.txt

unload:
	bash launchctl/unload.sh

load:
	bash launchctl/load.sh

list:
	bash launchctl/list.sh
