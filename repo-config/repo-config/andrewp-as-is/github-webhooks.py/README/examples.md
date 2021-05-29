```bash
$ cd path/to/repo
$ python3 -m github_webhooks.create "push" https://xxx.execute-api.us-east-1.amazonaws.com/run
$ python3 -m github_webhooks.names
web
$ python3 -m github_webhooks.urls
https://xxx.execute-api.us-east-1.amazonaws.com/run
$ python3 -m github_webhooks.delete "web"
```

`~/.github-webhooks.ini`
```
[name]
  url = https://xxx.execute-api.us-east-1.amazonaws.com/run
  events = push
```

```
$ python3 -m github_webhooks.init "name"
```
