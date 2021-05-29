```bash
$ webpack --config webpack.config.prod.js
$ python manage.py webpack_loader_db
```

```html
{% load render_bundle from webpack_loader_db %}
{% render_bundle 'main' 'css' %}
{% render_bundle 'main' 'js' %}
```
