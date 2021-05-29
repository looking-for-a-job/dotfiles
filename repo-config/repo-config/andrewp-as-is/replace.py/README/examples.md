```python
import replace
>>> replace.replace(["3.6","3.7","3.8"], {"3.7": "3.7-dev", "3.8": "3.8-dev"})
["3.6","3.7-dev","3.8-dev""3.8"]
```

```python
>>> replace.replace("package/module.py", {"/": ".", ".py": ""})
"package.module"
```
