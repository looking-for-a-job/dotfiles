`Makefile`, create env
```bash
WEBPACK_BUCKET:=BUCKET_NAME
all:
    test -s .env.s3.webpack || webpack-s3-create-full-access-env $(WEBPACK_BUCKET) > .env.s3.webpack
    test -s .env.prod.webpack || webpack-s3-create-read-only-env $(WEBPACK_BUCKET) > .env.prod.webpack
```

build and upload to S3 
```bash
set -o allexport
. .env.s3.webpack || exit

webpack --config webpack.config.prod.js || exit
webpack-s3-upload
```

##### optional: deploy webpack files to server

`Dockerfile` 
```Dockerfile
ENTRYPOINT ["/bin/sh","/entrypoint.sh"]
```

`entrypoint.sh`
```bash
webpack-s3-download
...
```

`ansible-playbook.yml`
```yml
...
  tasks:
  - name: task_name
    docker_container:
      ...
      env_file: ".env"
```
