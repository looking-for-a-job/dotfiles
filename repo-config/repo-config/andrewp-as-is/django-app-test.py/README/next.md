create `Makefile`:
```
all:
    django-app-test .
```

create `Makefile` for every folder:
```
all:
    find "$(CURDIR)" -name "tests.py" -print0 | xargs -0 -L 1 -I{} sh -c 'set "$$(dirname "$$0")"/Makefile; echo "all:" > "$$1"; echo " @django-app-test ." >> "$$1";echo $$1' {}
```
