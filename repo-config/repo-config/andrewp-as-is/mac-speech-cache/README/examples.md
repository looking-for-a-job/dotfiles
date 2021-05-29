```bash
# say "$@"
$ afplay "$(speech-cache "$@")"
```

make cache for multiple files and voices:
```bash
$ find . -name "*.txt" | xargs -I{} speech-cache -f {} -v Milena
$ find . -name "*.txt" | xargs -I{} speech-cache -f {} -v Yuri
```
