```python
>>> class Travis(badge.Badge):
    title = "Travis"
    image = "https://api.travis-ci.org/{fullname}.svg?branch={branch}"
    link = "https://travis-ci.org/{fullname}/"

>>> Travis(fullname="owner/repo") # .md, Markdown by default
'[![Travis](https://api.travis-ci.org/owner/repo.svg?branch=master)](https://travis-ci.org/owner/repo/)'

>>> Travis(fullname="owner/repo").rst # .rst, reStructuredText
'.. image: : https://api.travis-ci.org/owner/repo.svg?branch=master
    : target: https://travis-ci.org/owner/repo/'
```
