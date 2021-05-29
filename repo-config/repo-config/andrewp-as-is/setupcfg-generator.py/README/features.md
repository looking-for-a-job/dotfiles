`[metadata]`|files/environment variables
-|-
`name`|current directory basename or `$NAME`
`classifiers`|`classifiers.txt`, `$CLASSIFIERS`
`description`|`description.txt`, `$DESCRIPTION`
`keywords`|`keywords.txt`, `$KEYWORDS`
`long_description`|`README.md`/`README.rst`, `$LONG_DESCRIPTION`
`long_description_content_type`|`text/markdown` if `long_description` is `.md` file
`version`|`version.txt`, `$VERSION`
`url`|`$URL`

`[options]`|files/environment variables
-|-
`install_requires`|`requirements.txt`
`packages`|`setuptools.find_packages()`result, folders with `__init__.py`
`py_modules`|python files in a current directory
`scripts`|`bin/*` or `scripts/*` files

files can be in the current directory or any subdirectory
