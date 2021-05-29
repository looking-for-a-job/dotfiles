```python
>>> import mac_colors
>>> path = ["path/to/file"]
>>> mac_colors.red(path)
```
get
```python
>>> mac_colors.get(path)
{'path/to/file':["red"]}
```
set multiple colors
```python
>>> mac_colors.replace(["blue","red"],path)
```
remove colors
```python
>>> mac_colors.none(path)
```
