`key`|file/environment variable
-|-
`name`|current directory basename or `$SETUP_NAME`
`version`|`$SETUP_VERSION`
`url`|`$SETUP_URL`
`classifiers`|`classifiers.txt`, `$SETUP_CLASSIFIERS`
`description`|`$SETUP_DESCRIPTION`
`keywords`|`$SETUP_KEYWORDS`
`long_description`|`README.md`/`README.rst`, `$SETUP_LONG_DESCRIPTION`
`long_description_content_type`|`text/markdown` if `long_description` is `.md` file
`install_requires`|`requirements.txt`, `$SETUP_INSTALL_REQUIRES`
`packages`|`setuptools.find_packages()`, `$SETUP_PACKAGES`
`py_modules`|python files in a current directory, `$SETUP_PY_MODULES`
`scripts`|`scripts/*` files, `$SETUP_SCRIPTS`
