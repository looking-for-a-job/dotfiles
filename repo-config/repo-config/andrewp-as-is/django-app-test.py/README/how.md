`tests.py` **required**

**optional** app files:
```
fixtures/
templates/
templatetags/
forms.py
models.py
settings.py
views.py
urls.py
```

output **temp** folder:
```
manage.py 
app/__init__.py
app/apps.py
app/...             # app optional files
app/tests.py        # required
``` 

executed management commands:
```
python manage.py makemigrations app     # if models.py exists
python manage.py migrate app            # if models.py exists
python manage.py loaddata fixtures/*    # if fixtures/ exists
python manage.py test app
```
