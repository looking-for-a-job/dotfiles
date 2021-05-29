generate multiple README.md files

```bash
$ find . -name "demo.html" -exec python3 -m jsfiddle_readme_generator {} \;
```
paths with spaces:

OS|speed|command
-|-|-
any|slow|`find . -name "demo.html" -exec python3 -m jsfiddle_readme_generator {} \;`
Linux|fast|`find . -name "demo.html" -print0 \| xargs -d '\n' python3 -m jsfiddle_readme_generator`
macOS|fast|`find . -name "demo.html" -print0 \| xargs -0 python3 -m jsfiddle_readme_generator`
