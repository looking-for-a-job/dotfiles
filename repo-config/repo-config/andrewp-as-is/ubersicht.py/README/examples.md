generate widget
```python
>>> import ubersicht
>>> widget = ubersicht.Widget(name="name.widget", command="echo hello world", refresh="1s",style="color: red")
>>> widget.create()
>>> widget.path
'/Users/username/Library/Application Support/Übersicht/widgets/name.widget'
```

```bash
$ cat ~/Library/Application Support/Übersicht/widgets/name.widget/index.coffee
command: "echo hello world"

refreshFrequency: '1s'

update: (output, domEl) ->
    $(domEl).empty().append("#{output}")

style: """
color: red
"""
```
