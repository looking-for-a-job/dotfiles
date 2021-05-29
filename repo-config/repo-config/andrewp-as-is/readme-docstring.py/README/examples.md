example with [readme-generator](https://pypi.org/project/readme-generator/)
```python
class Readme(readme_generator.Readme):
    order = [..., "classes", "functions", ...]

    def classes(self):
        classes = self.getclasses()
        return readme_docstring.Classes(classes)

    def functions(self):
        functions = self.getfunctions()
        return readme_docstring.Functions(functions)
```

custom table
```python
class ExecutableModules(readme_docstring.Table):
    columns = ["usage", "`__doc__`"]

    def __init__(self,modules):
        self.objects = modules

    def getleftcell(self, obj):
        default = "python3 -m %s" % obj.__name__.replace(".__main__", "")
        return "`%s`" % getattr(obj, "USAGE", default)
```
