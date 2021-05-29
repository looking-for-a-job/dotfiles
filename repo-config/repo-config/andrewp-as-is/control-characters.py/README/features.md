fixes `plistlib`  problem with control characters
```python
>>> plistlib.dump(data, open(path, 'wb'))
...
ValueError: strings can't contains control characters; use bytes instead
```

