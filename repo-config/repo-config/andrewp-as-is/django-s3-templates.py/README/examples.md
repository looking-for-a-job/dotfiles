dev, upload to s3:
```bash
$ python manage.py s3_templates_upload
```

server, download from s3:
```
$ python manage.py s3_templates_download
```

docker:
```bash
$ docker exec -t "$(sudo docker ps -qf name=CONTAINER_NAME)" python manage.py s3_templates_download
```

ssh+docker:
```bash
$ ssh host 'docker exec -i "$(sudo docker ps -qf name=CONTAINER_NAME)" python manage.py s3_templates_download'
```
