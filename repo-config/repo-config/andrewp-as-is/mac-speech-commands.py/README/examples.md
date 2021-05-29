russian minutes plural:
```python
import mac_speech_commands
import plural_ru

def ru_minutes(value):
    return "%s %s" % (value.replace("1","одну"),plural_ru.ru(int(value),['минуту','минуты','минут']))

text="... длится [[ru:minutes 10]]"
functions = {"ru:minutes":ru_minutes}

mac_speech_commands.replace(text,functions)
```
