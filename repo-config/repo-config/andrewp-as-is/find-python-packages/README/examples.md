```
apps/__init__.py
apps/app1/__init__.py
apps/app2/__init__.py
settings/__init__.py
```

```bash
$ find-python-packages . | grep apps
apps
apps.app1
apps.app2
```
