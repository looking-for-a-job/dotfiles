create custom README class

```python
import django_readme_generator

class Readme(django_readme_generator.Readme):
    headers = {"badges":""}
    locations = django_readme_generator.Readme.locations + [".config/README"]
    order = ['badges',...]

    def badges(self):
        ...

Readme().save("README.md")
```
