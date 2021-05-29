```bash
$ find . -depth -type d -exec rmdir {} \; 2>/dev/null
```

```python
>>> import rmdir
>>> rmdir.rmdir(".")
```
