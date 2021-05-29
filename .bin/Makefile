all:
	find . -type f ! -name Makefile -mindepth 1 -maxdepth 1 -exec rm {} \;
	find . -type f -mindepth 2 -exec cp {} $(CURDIR) \;
	find ~/.bin -type f -exec chmod +x {} \;

