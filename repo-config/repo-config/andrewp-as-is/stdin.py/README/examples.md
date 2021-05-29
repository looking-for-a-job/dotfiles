```bash
$ printf "stdin text" | python -c "import stdin;print(stdin.size())"
10
$ echo "stdin text" | python -c "import stdin;print(stdin.size())"
11
```

```bash
python -c "import stdin;print(stdin.read())"

$ echo "stdin text" | python -c "import stdin;print(stdin.read())"
stdin text
```
