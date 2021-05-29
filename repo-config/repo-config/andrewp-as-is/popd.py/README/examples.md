```python
import popd

@popd.popd
def func():
    os.chdir('/tmp')
    print(os.getcwd())
```

```python
>>> os.getcwd()
'/Users/username'
>>> func()
'/tmp'
>>> os.getcwd()
'/Users/username'
```
