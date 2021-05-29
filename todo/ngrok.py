#!/usr/bin/env python
from django.conf import settings
import requests

# context_processors


def ngrok_tunnels(request):
    try:
        r = requests.get('http://localhost:4040/api/tunnels', timeout=2)
        return {'NGROK_TUNNELS': {t['name']: t for t in r.json()['tunnels']}}
    except requests.exceptions.ConnectionError:
        return {}
