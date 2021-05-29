```python
>>> mac_tag.update(["Red","Blue"],["path1","path2"])
>>> mac_tag.add(["Green"],["path1","path2"])
```

```python
>>> mac_tag.get(["path1"])
{'path1': ['Blue', 'Red', 'Green']}
```

```python
>>> mac_tag.remove(["Red"],["path1","path2"])
>>> mac_tag.remove(["*"],["path1","path2"])
```
