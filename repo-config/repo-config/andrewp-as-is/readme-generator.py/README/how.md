```
<global>/footer.md          global section
<global>/headers.json       global custom headers (optional). example: {"footer":""}
<global>/order.txt          global order. section names line by line

<local>/examples.md         custom section
<local>/order.txt           custom order     (optional)
```
`~/.config/readme-generator` - global location, `$README_GENERATOR_HOME`

`README.md`:
```markdown
#### Examples
<examples.md content>

<footer.md content>
```

#### Headers
**custom header**:
+   `headers.json` `{"how":"How it works"}`
+   `#### Insert Custom header in the first line`

**without header**: `headers.json` - `{"badges":""}` or empty first line/empty header
