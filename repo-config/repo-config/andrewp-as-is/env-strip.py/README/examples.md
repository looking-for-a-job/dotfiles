`.env`
```bash
SECRET_KEY="https://www.youtube.com/channel/UCTZUTvv_1Onm-f-533Hyurw"

# postgres settings:
DB_NAME="name"
DB_USER="postgres"
DB_HOST="127.0.0.1"
DB_PORT=5432
```

```bash
$ python3 -m env_strip .env
SECRET_KEY=https://www.youtube.com/channel/UCTZUTvv_1Onm-f-533Hyurw
DB_NAME=name
DB_USER=postgres
DB_HOST=127.0.0.1
DB_PORT=5432
```
