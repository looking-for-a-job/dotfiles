create `readme_generator.Readme` subclass(es). use attr/methods/props as sections

```python
class Readme(readme_generator.Readme):
    order = ["install", ..., "footer"]
    locations = readme_generator.Readme.locations + [".config/README"]
    headers = {"footer":""}
    footer = "footer ..."

    def install(self):
        return "`$ [sudo] pip install %s`" % self.name
```
