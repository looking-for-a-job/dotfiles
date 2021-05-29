```python
>>> import requirements_generator
>>> requirements_generator.scan(".")
['Requests==2.21.0']
>>> requirements_generator.scan(".",v=False)
['Requests']
```

```python
>>> import requirements_generator
>>> r = requirements_generator.Requirements()
>>> r.load("custom.txt")                 # load requirements from file
>>> r.scan(v=False)                      # scan current directory
>>> r.replace({"Django": "Django>2.0"})  # set Django version
>>> r.save()                             # save. default path is requirements.txt
```

one line example:

```python
>>> requirements_generator.scan(v=False).load("custom.txt").replace({"Django": "Django>2.0"}).save()
```
