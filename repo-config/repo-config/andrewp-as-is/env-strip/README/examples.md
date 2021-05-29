`.env`
```bash
SECRET_KEY="https://www.youtube.com/channel/UCTZUTvv_1Onm-f-533Hyurw"

# postgres settings:
DB_NAME="name" # comment
DB_USER="postgres" # comment
DB_HOST="127.0.0.1" # comment
DB_PORT=5432 # comment
```

```bash
$ env-strip .env
SECRET_KEY=https://www.youtube.com/channel/UCTZUTvv_1Onm-f-533Hyurw
DB_NAME=name
DB_USER=postgres
DB_HOST=127.0.0.1
DB_PORT=5432
```

stdin
```bash
$ find . \( -name .env.base -o -name ".env.prod.*" \) -exec cat {} \; | env-strip - > .env.prod
```

