`COLORS` dict
```python
>>> import github_colors
>>> github_colors.COLORS
{
    '1C Enterprise': '#814CCC',
    ...
}
```

`get(name,default)` (default color is `#ccc`)
```python
>>> github_colors.get('1c enterprise')
'#814CCC'

>>> github_colors.get('awk','#ccc')
'#ccc'
>>> github_colors.get('not-existing','#ccc')
'#ccc'
```
