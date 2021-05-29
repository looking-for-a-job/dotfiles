```python
import list_imports
imports = list_imports.get("file.py")
```

or from string:
```python
imports = list_imports.parse(open("file.py").read())
```

cli:
```bash
$ find . -type f -name "*.py" | xargs python3 -m list_imports
$ find . -type f -name "*.py" | xargs python3 -m list_imports | awk -F"." '{print $1}'
```
