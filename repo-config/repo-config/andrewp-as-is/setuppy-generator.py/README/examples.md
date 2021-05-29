```
project-name.py/
├── classifiers.txt
├── module.py
├── package
|   └── __init__.py
├── README.md
├── requirements.txt
└── scripts
    └── script
```

```bash
$ cd path/to/project-name.py
$ export SETUP_VERSION="1.0.0"
$ python3 -m setuppy_generator > setup.py
```

```python
setup(
    name='project-name',
    version='1.0.0',
    classifiers = [...],
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    install_requires=['req1','req2'],
    packages=['pkgname'],
    py_modules=['module'],
    scripts=['scripts/script']
)
```

example #2 - environment variables
```bash
$ export SETUP_URL="https://github.com/owner/repo"
$ export SETUP_CLASSIFIERS="classifiers.txt"
$ export SETUP_DESCRIPTION="description ..."
$ export SETUP_KEYWORDS="key1 key2"
$ export SETUP_LONG_DESCRIPTION="README.md"
$ export SETUP_INSTALL_REQUIRES="requirements.txt"
$ export SETUP_PACKAGES="package1 package2"
$ export SETUP_PY_MODULES="module1 module2"
$ export SETUP_SCRIPTS="scripts/script1 scripts/script2"
$ python3 -m setuppy_generator > setup.py
```

```python
setup(
    name='project-name',
    version='1.0.0',
    url='https://github.com/owner/repo',
    classifiers = [...],
    description='description ...',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    keywords='key1 key2',
    install_requires=['req1','req2'],
    packages=['package1','package2'],
    py_modules=['module1','module2'],
    scripts=['scripts/script1','scripts/script2']
)
```

`open(path).read()` function:
```bash
$ export SETUP_VERSION="open('.config/version.txt').read().split()"
$ export SETUP_DESCRIPTION="open('.config/description.txt').read().split()"
$ export SETUP_KEYWORDS="open('.config/keywords.txt').read().split(' ')"
$ python3 -m setuppy_generator > setup.py
```

```python
setup(
    ...
    version=open('.config/version.txt').read().split(),
    description=open('.config/description.txt').read().split(),
    keywords=open('.config/keywords.txt').read().split(' '),
    ...
)
```

example #3 - minimal `setup.py`
```bash
$ export SETUP_CLASSIFIERS=""
$ export SETUP_DESCRIPTION=""
$ export SETUP_KEYWORDS=""
$ export SETUP_LONG_DESCRIPTION=""
$ export SETUP_URL=""
$ python3 -m setuppy_generator > setup.py
```

```python
setup(
    name='project-name',
    version='1.0.0',
    install_requires=['req1','req2'],
    packages=['pkgname'],
    py_modules=['module'],
    scripts=['scripts/script']
)
```
