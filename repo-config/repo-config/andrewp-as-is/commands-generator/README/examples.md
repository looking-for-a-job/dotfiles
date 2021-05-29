generate `~/.local/share/bin` from `dotfiles/scripts`:

```
dotfiles/scripts/git/commit.sh
dotfiles/scripts/files/python/setup.cfg/create.sh
dotfiles/scripts/web/github.com/push.sh
```

```bash
$ cd path/to/dotfiles
$ commands-generator scripts ~/.local/share/bin
```

generated commands:
```
~/.local/share/bin/git:commit
~/.local/share/bin/files:python:setup.cfg:create
~/.local/share/bin/web:github.com:push
```

usage:
```
$ files:python:requirements.txt:create
$ git:commit
$ web:github.com:push
```
