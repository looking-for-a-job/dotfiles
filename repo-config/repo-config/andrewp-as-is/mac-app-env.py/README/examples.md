```bash
$ find . "*.app" | xargs python3 -m mac_app_env .env
```

paths with spaces:
```bash
$ find . "*.app" -exec python3 -m mac_app_env .env {} \;
```
