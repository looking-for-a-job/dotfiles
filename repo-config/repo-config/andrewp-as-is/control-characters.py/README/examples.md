environment variables without control characters:
```python
env = dict((k, control_characters.remove(v)) for k, v in os.environ.items())
```
