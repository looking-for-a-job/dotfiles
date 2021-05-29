DST:=~/Applications/.Tasks
SCRIPT:=script.sh

all:
	make appify
	make env

appify:
	psql -At -c "SELECT slug from task" tasks | xargs -I{} bash -l -c 'appify $(SCRIPT) $(DST)/$$0.app "$$(image $$0.png)"' {}

env:
	find $(DST) -name "*.app" -print0 | xargs -0 python3 -m mac_app_env .env
