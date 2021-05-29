```python
>>> import recursion_detect
>>> def recur():
    depth = recursion_detect.depth()
    print("depth = %s" % depth)
    if depth==5:
        return
    recur()

>>> recur()
0
1
2
3
4
```
