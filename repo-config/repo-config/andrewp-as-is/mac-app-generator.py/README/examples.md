create app from shell script
```bash
$ mac-app-generator script.sh name.app
$ mac-app-generator script.sh name.app Icon.png
```

create app from python script
```python
>>> mac_app.App(app_script="file.py", app_path="name.app").create_app()
```

create app from a python class
```python
import mac_app_generator
class MyApp(mac_app_generator.App):
    def run(self):
        pass

if __name__ == "__main__":
    MyApp().run()
```

```python
>>> MyApp().create_app()
```
