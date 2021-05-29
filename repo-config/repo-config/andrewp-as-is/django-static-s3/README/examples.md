`Makefile`, create env
```bash
STATIC_BUCKET:=BUCKET_NAME
all:
    test -s .env.s3.static || static-s3-create-env $(STATIC_BUCKET) > .env.s3.static
```

upload `static/` to S3 
```bash
export DJANGO_SETTINGS_MODULE=settings.dev
python manage.py collectstatic --no-input

set -o allexport
. .env.s3.static || exit

static-s3-upload
```
