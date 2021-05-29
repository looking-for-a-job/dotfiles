```python
>>> import runcmd
>>> r = runcmd.run(["echo", "hello world"])
>>> r.code  # exit status code
0
>>> r.out  # stdout
'hello world'
>>> r.err  # stderr
''
>>> r.pid  # process pid
1234
```

`background=True`
```python
>>> r = runcmd.run(["sleep","5"],background=True)
>>> while r.running:  # True if process is running and not "zombie process"
>>>     print("running")
```
`kill(signal=None)` - kill process
```python
>>> r.kill(-9)
```

`exc()` - raise exception if code is not `0`
```python
>>> runcmd.run(["ls"]).exc()              # code 0, ok
>>> runcmd.run(["mkdir", "/"]).exc()      # code 1, raise OSError
...
OSError: exited with code 1
mkdir: /: Is a directory
```
