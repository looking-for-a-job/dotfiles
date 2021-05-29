example 1. run script only once:
```bash
path="$(mkcache script "$@")"
! [ -e "$path" ] && { script "$@" || exit; touch "$path"; }
```

example 2. speed up macOS tts with mkcache:
```bash
path="$(mkcache "$@")"
! [ -e "$path" ] && /usr/bin/say "$@" -o "$path"
afplay "$path"
```

