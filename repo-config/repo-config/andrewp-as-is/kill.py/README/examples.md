```python
>>> kill.kill(61024)
>>> kill.kill([61076])
```

errors
```python
>>> kill.kill(9999999)
kill: 999999: No such process

>>> kill.kill(1)
kill: (1) - Operation not permitted
```
