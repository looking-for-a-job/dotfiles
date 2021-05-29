```python
>>> import applescript
>>> r = applescript.run('return 1')
>>> r = applescript.run('path/to/file.applescript')

>>> r.code
0
>>> r.out
'hello world'
>>> r.err
''
```

`tell application "appname"`
```python
>>> applescript.tell.app("Terminal",'do script "ls"')
>>> applescript.tell.app("Terminal",'do script "ls"',background=True)
```

