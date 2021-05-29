```python
>>> import pgrep
>>> pgrep.pgrep("Finder")
[322]

>>> pgrep.pgrep("bash")
[416, 434, 30681, 30918]

>>> pgrep.pgrep("not-existing-process")
[]
```
