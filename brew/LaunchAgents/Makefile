all:
	find ~/Library/LaunchAgents -name "homebrew.*.plist" -exec chflags nouchg {} \; # unlock
	find ./custom -type f -name "*.plist" -exec cp {} ~/Library/LaunchAgents \;
	find ~/Library/LaunchAgents -name "homebrew.*.plist" -exec chflags uchg {} \; # lock
