```html
{% load timesince_shortener %}

{{ item.created_at|timesince_shortener }} ago
```

`timesince`|`timesince_shortener`
-|-
`1 hour 5 minutes ago`|`1 hour ago`
`1 year 2 months ago`|`1 year ago`

