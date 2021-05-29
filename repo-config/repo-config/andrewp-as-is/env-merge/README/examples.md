```bash
$ find . \( -name .env.base -o -name ".env.prod.*" \) | xargs env-merge > .env.prod
```
