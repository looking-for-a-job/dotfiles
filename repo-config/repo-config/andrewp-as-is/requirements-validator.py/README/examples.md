```python
import requirements_validator
invalid = requirements_validator.check(["requests", "sqlalchemy"])
if invalid:
    sys.exit("\n".join(invalid))

```

exit with non-zero status code on invalid requirements
```bash
$ python3 -m requirements_validator requirements.txt
$ cat requirements.txt | python3 -m requirements_validator
```

```bash
$ requirements-validator requirements.txt
$ cat requirements.txt | requirements-validator
```
