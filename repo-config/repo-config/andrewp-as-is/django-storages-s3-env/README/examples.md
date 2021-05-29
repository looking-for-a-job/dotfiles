`Makefile`, create env
```bash
MEDIA_BUCKET:=BUCKET_NAME
all:
    test -s .env.prod.media || storages-s3-create-env $(MEDIA_BUCKET) > .env.prod.media
```
