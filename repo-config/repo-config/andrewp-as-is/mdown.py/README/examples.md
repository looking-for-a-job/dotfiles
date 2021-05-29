**header**
```python
>>> import mdown
>>> mdown.header("title", 6)
'###### Title'
```
**code**
```python
>>> mdown.code("$ [sudo] pip install readme_md", "bash")
# look Install section :)
```

**image**
```python
>>> mdown.image("https://domain.com/image.png", title="title text", alt="alt text")
'![alt text](https://domain.com/image.png "title text")'
```

**table**
```python
>>> mdown.table(("header1","header2"),(("cell11","cell12"), ("cell21","cell22")))
'header1|header2
-|-
cell11|cell12
cell21|cell22'
```
