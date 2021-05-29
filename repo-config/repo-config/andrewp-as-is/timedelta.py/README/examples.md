```python
>>> import timedelta

>>> td = timedelta.Timedelta(days=2, hours=2)

# init from datetime.timedelta
>>> td = timedelta.Timedelta(datetime1 - datetime2)
```

`total` seconds, minutes, hours, days
```python
>>> td = timedelta.Timedelta(days=2, hours=2)
>>> td.total.seconds
180000
>>> td.total.minutes
3000
>>> td.total.hours
50
>>> td.total.days
2
```
