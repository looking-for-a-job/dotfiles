```bash
$ dock add-app /Applications/iTunes.app; killall Dock
```

```bash
# arrangement:  1 - name (default), 2 - added, 3 - modification, 4 - creation, 5 - kind
# displayas:    1 - folder, 2 - stack (default)
# showas:       1 - beep, 2 - grid, 3 - list, 4 - auto (default)
$ dock add-folder --arrangement=2 --displayas=1 --showas=1 ~/Downloads; killall Dock
```

```bash
$ dock apps
/Users/username/Applications/Google Chrome.app
/Users/username/Applications/Sublime Text.app
/Applications/Utilities/Terminal.app
/Applications/iTunes.app
```

```bash
$ dock folders
/Users/username/Downloads
```


```bash
$ dock rm /Applications/iTunes.app ~/Downloads; killall Dock
```
