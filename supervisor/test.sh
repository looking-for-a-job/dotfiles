    <key>StandardErrorPath</key>
    <string>/Users/russianidiot/StandardErrorPath.log</string>

brew services stop supervisor

launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.supervisor.plist
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.supervisor.plist

launchctl list | grep supervisor

/usr/local/opt/supervisor/bin/supervisord -c /usr/local/etc/supervisord.ini --nodaemon

rm /Users/russianidiot/StandardErrorPath.log
cat /Users/russianidiot/StandardErrorPath.log

cat /usr/local/etc/supervisor.d/test.ini

lsof -nP -iTCP | grep 911
