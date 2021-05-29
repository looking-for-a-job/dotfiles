dev
```bash
$ python manage.py refresh_matviews
$ python manage.py drop_matviews
```

prod
```bash
$ ssh user@hostname sudo docker run --env-file .env image python manage.py refresh_matviews
$ ssh user@hostname sudo docker run --env-file .env image python manage.py drop_matviews
```
