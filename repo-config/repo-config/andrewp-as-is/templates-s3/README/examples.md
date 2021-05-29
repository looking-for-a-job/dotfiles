`Makefile`, create env
```bash
TEMPLATES_BUCKET:=BUCKET_NAME
all:
    test -s .env.s3.templates || templates-s3-create-full-access-env $(TEMPLATES_BUCKET) > .env.s3.templates
    test -s .env.prod.templates || templates-s3-create-read-only-env $(TEMPLATES_BUCKET) > .env.prod.templates
```

upload `templates/` to S3 
```bash
set -o allexport
. .env.s3.templates || exit

templates-s3-upload
```

`Dockerfile` 
```Dockerfile
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
```

`entrypoint.sh`
```bash
templates-s3-download
...
```

`ansible-playbook.yml`
```yml
...
  tasks:
  - name: task_name
    docker_container:
      ...
      env_file: ".env.prod"
```
