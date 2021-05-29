```python
>>> import hwmonitor
>>> hwmonitor.read()
SMART Disk XXX (ZZZ): 55 C
...

>>> hwmonitor.sensors()
{'SMART Disk XXX (ZZZ)': 55, ...}

>>> hwmonitor.sensor("air")
25
```
