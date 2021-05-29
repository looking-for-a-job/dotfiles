```python
>>> import markdown_lists

>>> lists = ["item1",["subitem11","subitem12"],"item2"]
>>> markdown_lists.render(lists)
+   item1
    +   subitem11
    +   subitem12
+   item2
```

