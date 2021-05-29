```bash
$ cd path/to/repo
$ repo-config init .
$ ... # generate and edit config/tmp files
$ repo-config save .
.config/ saved to ~/.config/repo-config/owner/repo
$ repo-config load .
.config/ loaded from ~/.config/repo-config/owner/repo
```


symlink dotfiles to a special backup repository:

```bash
$ ln -fs path/to/backup-repository/repo-config ~/.config/repo-config
```

##### save/load multiple repos config
```bash
$ find ~/git -type d -maxdepth 1 -exec repo-config save {} \;
$ find ~/git -type d -maxdepth 1 -exec repo-config load {} \;
```
