```python
>>> import shebang

>>> shebang.get("path/to/file.py")
'/usr/bin/env python'

>>> shebang.get("path/to/file.txt")
None

>>> shebang.get("/bin/ls")
None
```

```bash
$ python3 -m shebang file.py
/usr/bin/env python
```
