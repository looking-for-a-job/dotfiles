+   replace [`__all__`](https://stackoverflow.com/questions/44834/can-someone-explain-all-in-python) with `@public.add` decorator


before
```python
__all__ = ["func"]

def func():
```

after
```python
import public

@public.add
def func():
```
