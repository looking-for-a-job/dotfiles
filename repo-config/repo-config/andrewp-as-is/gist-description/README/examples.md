```bash
$ gist-description <id> "new description"
$ gist-description <id>
new description
```

update multiple gists description
```bash
$ pip install gist-id
```

a) folder name as description
```bash
find ~/git/gists -type d -maxdepth 1 -exec bash -l -c 'id=$(gist-id "$0"); desc="$(basename "$0")"; [[ -n $id ]] && gist-description $id $desc' {} \;
```

b) `description.txt` as description
```bash
$ find ~/git/gists -type d -maxdepth 1 -exec bash -l -c 'id=$(gist-id "$0"); desc="$(cat description.txt 2> /dev/null)"; [[ -n $id ]] && [[ -n $desc ]] && gist-description $id $desc' {} \;
```
