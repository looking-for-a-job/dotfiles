`~/.bashrc`:
```bash
export MAC_TERMINAL_CLOSE=0 # doesn't close (default)
export MAC_TERMINAL_CLOSE=1 # close if the shell exited cleanly
export MAC_TERMINAL_CLOSE=2 # close always
```

Terminal error sound:
```bash
$ defaults write .GlobalPreferences com.apple.sound.beep.sound /System/Library/Sounds/Basso.aiff
```
