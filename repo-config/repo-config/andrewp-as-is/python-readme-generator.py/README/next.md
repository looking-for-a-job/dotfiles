create custom README class

```python
import python_readme_generator

class Readme(python_readme_generator.Readme):
    headers = {"badges":""}
    locations = python_readme_generator.Readme.locations + [".config/README"]
    order = ['badges','install', 'features', 'classes', 'functions', 'next',...]

    def badges(self):
        ...

Readme().save("README.md")
```
