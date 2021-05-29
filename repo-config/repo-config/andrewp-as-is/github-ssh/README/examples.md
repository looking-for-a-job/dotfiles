```bash
$ github-ssh username
```

created files:
```
~/.ssh/github/id_rsa_github_username
~/.ssh/github/id_rsa_github_username.pub     (add to github settings -> SSH keys)
~/.ssh/config.d/github/username.github.com
```

```bash
$ cd path/to/repo
$ git remote add github git@username.github.com:username/repo.git
```
