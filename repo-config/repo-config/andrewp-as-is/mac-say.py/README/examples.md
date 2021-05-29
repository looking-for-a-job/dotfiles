```python
>>> import mac_say
>>> mac_say.say("hello world")
>>> mac_say.say(["-f","file.txt","-v","Alex"])
```

voices list
```python
>>> mac_say.voices("en")
[('Alex', 'en_US', 'Most people recognize me by my voice.'), ...]
```

background - add `background=True`
```python
>>> mac_say.say("hello world",background=True)
```

Google Text-To-Speech
```python
>>> mac_say.gtts.mp3("en","hello world")
/Users/username/Library/Caches/say/<hash>.mp3

>>> mac_say.gtts.say("en","hello world")
```

```bash
$ python3 -m mac_say.gtts "en" "hello world"
```
