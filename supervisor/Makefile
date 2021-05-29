FILES:=/usr/local/etc/supervisor.d

all:
	# make install
	make cp
	# make clear
	make restart
	# make status

install:
	# brew upgrade supervisor
	# brew reinstall supervisor
	/usr/local/bin/brew install supervisor
	/usr/local/bin/brew link --overwrite supervisor

cp:
	cp supervisord.ini /usr/local/etc/supervisord.ini
	rsync --delete -a supervisor.d/ $(FILES)
	#find $(FILES) -name "*.ini" -exec python3 -m supervisor_logs.add {} \;
	#find $(FILES) -name "*.ini" -exec python3 -m supervisor_logs.mkdir {} \;
	#find $(FILES) -name "*.ini" -exec python3 -m supervisor_logs.clear {} \;

clear:
	supervisorctl clear all

restart:
	# /usr/local/bin/brew services stop supervisor
	/usr/local/bin/brew services restart supervisor
	launchctl list | grep supervisor

status:
	supervisorctl status
