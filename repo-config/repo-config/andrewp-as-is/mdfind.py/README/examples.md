```python
>>> import mdfind
>>> mdfind.name('Group Containers')
['/Users/username/Library/Group Containers']
```

```python
>>> mdfind.query('kMDItemContentType==public.shell-script')
[...]
```

```python
>>> mdfind.count(query='kMDItemContentType==public.mp3')
42
>>> mdfind.count(name='Group Containers')
1
```

```python
>>> mdfind.mdfind(['-count','-onlyin','/usr','kMDItemContentType==public.shell-script'])
42
```
