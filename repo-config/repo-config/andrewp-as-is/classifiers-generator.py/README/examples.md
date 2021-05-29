```bash
$ cat requirements.txt
Django
setuptools
```

```bash
$ python3 -m classifiers_generator > classifiers.txt
```

```bash
$ cat classifiers.txt
Programming Language :: Python
Programming Language :: Python :: 3.5
Programming Language :: Python :: 3.6
Programming Language :: Python :: 3.7
```

```python
import classifiers_generator
classifiers_generator.Requirements("requirements.txt").classifiers()
```
