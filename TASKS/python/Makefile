all:
	make sync
	make scan
	make update

sync:
	cp -R $(CURDIR)/site-packages/ ~/.local/share/python/prod/site-packages

scan:
	bash -l -c 'python3 -m task.scan'

update:
	bash -l -c 'python3 -m task.update'
