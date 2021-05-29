`index.html`:
```html
{% for v in values %}
{{ forloop.counter0 }}: {{ v }}
{% endfor %}
```

`context.json`:
```json
{
    "values": ["value1","value2","value3"]
}
```

```bash
$ django-template-cli index.html
0: value1

1: value2

2: value3
```



