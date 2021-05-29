all:
	rsync -a --no-links --exclude .git $(CURDIR)/.[^.]* ~
	find ~/.bin -type f -exec chmod +x {} \;
	# find -H ~/git -type d -mindepth 1 -maxdepth 1 -exec ln -hfns ~/.repo-admin {}/.admin \;
