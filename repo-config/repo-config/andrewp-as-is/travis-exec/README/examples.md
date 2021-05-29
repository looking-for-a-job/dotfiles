```bash
$ travis-exec travis status -r {}
$ travis-exec python3 -m travis_cron.add {} master daily no
$ travis-exec python3 -m travis_env.set {} WEBHOOK_URL "$WEBHOOK_URL"
```
