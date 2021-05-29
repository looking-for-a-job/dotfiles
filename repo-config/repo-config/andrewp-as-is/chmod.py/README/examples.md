
```python
>>> chmod.chmod(["-R","755","path"])  # chmod -R 755 path
```

```python
>>> chmod.check.executable("/bin/cat")
True
>>> chmod.check.writable("/bin/cat")
False
>>> chmod.check.readable("/bin/cat")
True
```

```python
>>> chmod.make.executable("path/to/file")
```
