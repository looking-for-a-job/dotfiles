```
project-name.py/
├── bin
|   └── script
├── classifiers.txt
├── description.txt
├── subfolder/keywords.txt
├── requirements.txt
├── module.py
├── package
|   └── __init__.py
├── README.md
├── scripts
|   └── script
├── setup.py
├── subfolder/version.txt
```

```bash
$ cd path/to/project-name.py
$ export URL="https://github.com/owner/repo"
$ python3 -m setupcfg_generator
$ cat setup.cfg
[metadata]
name = project-name
version = 1.0.0
url = https://github.com/owner/repo
classifiers = file: classifiers.txt
description = file: description.txt
long_description = file: README.md
long_description_content_type = text/markdown
keywords = key1 key2

[options]
install_requires =
    req1
    req2
packages =
    pkgname
py_modules =
    module
scripts =
    bin/script
    scripts/script
```

