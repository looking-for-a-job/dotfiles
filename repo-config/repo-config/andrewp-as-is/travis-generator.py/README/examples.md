classifiers
```bash
$ python setup.py --classifiers
Programming Language :: Python
Programming Language :: Python :: 3.4
Programming Language :: Python :: 3.5
Programming Language :: Python :: 3.6
Programming Language :: Python :: 3.7
```

```python
import travis_generator
class Travis(travis_generator.Travis):
    install = "curl -fLs https://git.io/<xxx> | bash -s"
    script = "curl -fLs https://git.io/<yyy> | bash -s"

Travis().save()
```

```bash
$ cat .travis.yml
language: python
python:
- "3.4"
- "3.5"
- "3.6"
- "3.7"
install: curl -fLs https://git.io/<xxx> | bash -s
script: curl -fLs https://git.io/<yyy> | bash -s
```
