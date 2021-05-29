```python
import chrome_bookmarks

for folder in chrome_bookmarks.folders:
    print(folder.name)
    print(folder.folders)
```

```python
for url in chrome_bookmarks.urls:
    print(url.url, url.name)
```
