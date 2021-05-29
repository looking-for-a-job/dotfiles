[jsfiddle github repo](https://docs.jsfiddle.net/github-integration/untitled-1):
```
.
├── build.html          generated
├── demo.html           required
├── demo.css            optional
├── demo.js             optional
├── demo.details        optional
```

[jsfiddle github gist](https://docs.jsfiddle.net/github-integration/untitled):
```
.
├── build.html          generated
├── fiddle.html         required
├── fiddle.css          optional
├── fiddle.js           optional
├── fiddle.manifest     optional
```


`build.html`:
```html
<html>
<head>
<title>{title}</title>
{resources}
<style type="text/css">
    {css}
</style>
<script type="text/javascript">
window.onload=function(){
    {js}
}
</script>
</head>
<body>
    {html}
</body>
</html>
```
