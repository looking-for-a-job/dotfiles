django prod settings
```python
import ec2_metadata
ALLOWED_HOSTS = [ec2_metadata.get('local-ipv4'),ec2_metadata.get('public-ipv4')]
```
