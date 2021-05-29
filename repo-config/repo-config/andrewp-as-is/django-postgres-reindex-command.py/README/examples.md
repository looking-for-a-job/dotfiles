dev
```bash
$ python manage.py reindex
```

prod
```bash
$ ssh user@hostname sudo docker run --env-file .env image python manage.py reindex
```
