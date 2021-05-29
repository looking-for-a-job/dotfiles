```bash
$ find apps -depth -type d -empty | xargs django-startapps
```

`--template TEMPLATE`
```bash
$ find apps -depth -type d -empty | xargs django-startapps --template=https://github.com/user/django-app-template/archive/master.zip
```
