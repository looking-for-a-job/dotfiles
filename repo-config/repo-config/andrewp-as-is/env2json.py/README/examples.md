`.env.dev`
```bash
DB_NAME=name
DB_USER=username
DB_HOST=127.0.0.1
DB_PORT=5432
```

```bash
$ python3 -m env2json .env.dev > .env.dev.json
```

`.env.dev.json`
```json
{
  "DB_HOST": "127.0.0.1",
  "DB_NAME": "name",
  "DB_PORT": "5432",
  "DB_USER": "username"
}
```
