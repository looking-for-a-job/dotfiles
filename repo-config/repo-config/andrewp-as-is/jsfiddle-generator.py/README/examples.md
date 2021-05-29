create `demo.css`, `demo.js`, `demo.details` in every dir with `demo.html`:
```bash
$ find . -name "demo.html" -exec python3 -m jsfiddle_generator.repo {} \;
```

---
create jsfiddle repo files in every empty dir:

`find . -not -path '*/\.*' -type d -links 2 -exec python3 -m jsfiddle_generator.repo {} \;`

---
paths with spaces:

OS|speed|command
-|-|-
any|slow|`find ... -exec python3 -m jsfiddle_generator.repo {} \;`
Linux|fast|`find ... -print0 \| xargs -d '\n' python3 -m jsfiddle_generator.repo`
macOS|fast|`find ... -print0 \| xargs -0 python3 -m jsfiddle_generator.repo`
