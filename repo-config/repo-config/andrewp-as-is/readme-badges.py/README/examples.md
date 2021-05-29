```python
>>> import pyversions
pyversions = readme_badges.pypi.pyversions()
pypi = readme_badges.pypi.v()
npm = readme_badges.npm.v()
travis = readme_badges.travis()

badges = [pyversions, pypi, npm, travis]
"\n%s" % "\n".join(filter(None, badges))
```
